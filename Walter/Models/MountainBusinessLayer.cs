using System;
using System.Collections.Generic;
using System.Linq;
using Walter.ViewModels;

namespace Walter.Models
{
    public class MountainBusinessLayer
    {
        public List<VmMountain> GetMountains()
        {
            var db = new WalterEntities();
            var mtns = db.Mountains.ToList();

            var mountainList = mtns.Select(mtn => new VmMountain
            {
                Id = mtn.Id,
                Name = mtn.Name,
                Elevation = mtn.Elevation,
                Country = mtn.Country,
                State = mtn.State,
                Latitude = mtn.Latitude,
                Longitude = mtn.Longitude,
                MountainNote = mtn.MountainNote,
                SummitLog = mtn.MountainSummitLogs.Select(l => new VmMountainSummitLog
                {
                    Id = l.Id,
                    MountainId = l.MountainID,
                    SummitDate = Convert.ToDateTime(l.SummitDate),
                    SummitNote = l.SummitNote
                }).ToList().OrderBy(y => y.SummitDate).ToList()
            }).ToList();
            
            return mountainList;
        }

        public bool SaveMountain(VmMountain m, string summitDate, string summitNote)
        {
            bool rtnVal = true;

            try
            {
                var mtn = new Models.Mountain
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
                
                rtnVal = SaveLog(mtn.Id, summitDate, summitNote);

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