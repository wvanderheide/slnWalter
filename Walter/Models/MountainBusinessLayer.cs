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
            var db = new WalterEntities();
            return db.Mountains.ToList();
        }

        public bool SaveMountain(Walter.ViewModels.Mountain m, string summitDate, string summitNote)
        {
            bool rtnVal = true;

            try
            {
                var mtn = new Walter.Models.Mountain
                {
	                Name = m.Name,
	                Elevation = Convert.ToInt32(m.Elevation),
	                Country = m.Country,
					State = m.State,
	                Latitude = m.Latitude,
	                Longitude = m.Longitude,
	                MountainNote = m.MountainNote
                };

	            var db = new WalterEntities();
                db.Mountains.Add(mtn);
                db.SaveChanges();
                
                rtnVal = SaveLog(mtn.id, summitDate, summitNote);

                if(!rtnVal)
                {
                    //TODO: Rollback Mountain add if Save Log returns false
                    var ex = new Exception("Saving Mountain Log failed");
                    throw ex;
                }
            }
            catch(Exception ex)
            {
                rtnVal = false;
            }

            return rtnVal;
        }

        public bool SaveLog(int mountainId, string summitDate, string summitNote)
        {
            bool rtnVal = true;

            try
            {
                var db = new WalterEntities();
                var log = new MountainSummitLog
                {
	                MountainID = mountainId,
	                SummitNote = summitNote,
	                SummitDate = Convert.ToDateTime(summitDate)
                };

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