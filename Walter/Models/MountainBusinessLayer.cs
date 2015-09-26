using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Walter.ViewModels;

namespace Walter.Models
{
    public class MountainBusinessLayer
    {
        public List<VMmountain> GetMountains()
        {
            var db = new WalterEntities();
            var mtns = db.Mountains.ToList();

            var mountainList = mtns.Select(mtn => new VMmountain
            {
                Id = mtn.id,
                Name = mtn.Name,
                Elevation = mtn.Elevation,
                Country = mtn.Country,
                State = mtn.State,
                Latitude = mtn.Latitude,
                Longitude = mtn.Longitude,
                MountainNote = mtn.MountainNote,
                SummitLog = mtn.MountainSummitLogs.Select(l => new VMmountainSummitLog
                {
                    Id = l.id,
                    MountainId = l.MountainID,
                    SummitDate = Convert.ToDateTime(l.SummitDate),
                    SummitNote = l.SummitNote
                }).ToList().OrderBy(y => y.SummitDate).ToList()
            }).ToList();

            return mountainList;
        }

        public bool SaveMountain(VMmountain m, string summitDate, string summitNote)
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
                    new Exception("Saving Mountain Log failed");
                }
            }
            catch
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