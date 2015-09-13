using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.Models
{
    public class MountainBusinessLayer
    {
        public List<Mountain> GetMountains()
        {
            WalterEntities db = new WalterEntities();
            return db.Mountains.ToList();
        }

        public bool SaveMountain(Mountain m, string SummitDate, string SummitNote)
        {
            bool rtnVal = true;

            try
            {
                WalterEntities db = new WalterEntities();
                db.Mountains.Add(m);
                db.SaveChanges();
                
                rtnVal = SaveLog(m.id, SummitDate, SummitNote);

                if(!rtnVal)
                {
                    //TODO: Rollback Mountain add if Save Log returns false
                    Exception ex = new Exception("Saving Mountain Log failed");
                    throw ex;
                }
            }
            catch(Exception ex)
            {
                rtnVal = false;
            }

            return rtnVal;
        }

        public bool SaveLog(int MountainId, string SummitDate, string SummitNote)
        {
            bool rtnVal = true;

            try
            {
                WalterEntities db = new WalterEntities();
                MountainSummitLog log = new MountainSummitLog();
                log.MountainID = MountainId;
                log.SummitNote = SummitNote;
                log.SummitDate = Convert.ToDateTime(SummitDate);

                db.MountainSummitLogs.Add(log);
                db.SaveChanges();
            }
            catch
            {
                rtnVal = false;
            }

            return rtnVal;
        }
    }
}