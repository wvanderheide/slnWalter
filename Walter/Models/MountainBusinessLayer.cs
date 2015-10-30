using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using Walter.ViewModels;

namespace Walter.Models
{
    public class MountainBusinessLayer
    {
        private static readonly WalterEntities Entities = new  WalterEntities();

        public List<VmMountain> GetMountains()
        {
            var mtns = Entities.Mountains.ToList();

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

        public List<VmClimb> Climbs()
        {
            var mtns = Entities.AllClimbs();

            var mountainList = mtns.Select(mtn => new VmClimb
            {
                Id = mtn.Id,
                Name = mtn.Name,
                Elevation = mtn.Elevation,
                Country = mtn.Country,
                State = mtn.State,
                Latitude = mtn.Latitude,
                Longitude = mtn.Longitude,
                MountainNote = mtn.MountainNote,
                SummitDate = mtn.SummitDate,
                Year = Convert.ToDateTime(mtn.SummitDate).Year,
                SummitNote = mtn.SummitNote
            }).ToList();

            return mountainList;
        }
        
        public List<VmClimbYear> ClimbYears()
        {
            List<VmClimb> climbs = Climbs().OrderByDescending(y => y.Year).ThenByDescending(m => m.SummitDate).ToList();

            return PutClimbsInColumns(climbs);
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

                Entities.Mountains.Add(mtn);
                Entities.SaveChanges();

                rtnVal = SaveLog(mtn.Id, summitDate, summitNote);

                if (!rtnVal)
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
                var log = new MountainSummitLog
                {
                    MountainID = mountainId,
                    SummitNote = summitNote,
                    SummitDate = Convert.ToDateTime(summitDate)
                };

                Entities.MountainSummitLogs.Add(log);
                Entities.SaveChanges();
            }
            catch
            {
                rtnVal = false;
            }

            return rtnVal;
        }
        
        public string GetSpHtml(string summitPostUserUrl)
        {
            const string startReplace = "||s||";

            var html = ScrapeHtml(summitPostUserUrl);
            var img = html; //save all the html to later get the user image from it.

            var startTag = "<span class=power>";
            var endTag = "<b>Occupation: </b>";

            var power = Substring(startTag, endTag, html, true, false); // returns something like this: <span class=power> Power = 139 (Vote Weight = 88.57%)<span class="ajax_info" onClick='javascript:get_help_js("1111171270", 171270)'><img src='/images/layout/info.png'></img></span>   <div id='1111171270' class="helpdiv" style="display: none;">     Loading... </div></span></p><br><p>

            power = Substring(startTag, @"<span class=""ajax_info""", power, false, false); // returns something like this: Power = 139 (Vote Weight = 88.57%)

            startTag = "My Mountains";
            endTag = "My Routes";
            html = Substring(startTag, endTag, html, true, false);

            var title = html;
            endTag = "</div>";
            title = Substring(startTag, endTag, title, true, false);

            var userName = summitPostUserUrl;  //http://www.summitpost.org/users/vanman798/23249 
            userName = userName.Replace("http://www.summitpost.org/users/", startReplace);
            userName = userName.Replace("/", "/");
            userName = Substring(startReplace, "/", userName, false, false);

            startTag = "<a href='/" + userName + "/";
            endTag = "<span class=basics>";
            img = Substring(startTag, endTag, img, false, false);
            startTag = "src='/";
            endTag = "'></img>";
            img = Substring(startTag, endTag, img, true, false);
            img = img.Replace("src='/", "src='http://www.summitpost.org/");
            img = "<img " + img + "' alt='" + userName + "' title='" + power + "' />";

            userName = userName.ToUpper() + "'s ";

            //Mark up Title for the retVal
            var retVal = "<h3 style='margin:0;'><a style='text-decoration:none; color:black;' href='" + summitPostUserUrl + "' target='_blank'>"
                + title.Replace("My", userName)
                + "</a></h3>\r\n";

            var timeStamp = GetTmeStamp();

            //Get just the <table> of My Mountains  
            startTag = "<center>";
            endTag = "</center>";
            html = Substring(startTag, endTag, html, false, false);

            //Make the URLs absolute
            html = html.Replace("href='/", "href='http://www.summitpost.org/");

            //Loop substring, all the while extracting URLs from it and then shortening it, until it runs out of anchor tags
            var newHtml = string.Empty;
            var csv = string.Empty;
            while (html.IndexOf("</a>") >= 0)
            {
                //Make a CVS list of the URLs, each these pages in turn will need to be screen scraped
                csv = csv + GetUrLandShortenSubstring(html, out newHtml) + ",";
                html = newHtml;
            }

            retVal += "<div style='float: left'>" + timeStamp + GetHitsVotesScoreAndReturnAsTable(html, csv, startReplace)
                + "<i>(Click a column header above to sort by that column)</i>"
                + "</div>";
            retVal += "<div style='float: left; padding-left:5px;'>" + power + "<br />"
                + "<a style='text-decoration:none; color:black;' href='" + summitPostUserUrl + "' target='_blank'>" + img + "</a></div>";

            return retVal;
        }
       
        #region Helper Method
        private static string GetTmeStamp()
        {
            DateTime rightNow = DateTime.Now;
            string timeStamp = System.Globalization.CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(rightNow.Month)
                        + " " + rightNow.Day.ToString() + ", "
                        + rightNow.Year.ToString() + " ";
            string h = rightNow.Hour.ToString();
            string m = rightNow.Minute.ToString();

            string am = " am";
            if (Convert.ToInt16(h) > 12)
            {
                h = (Convert.ToInt16(h) - 12).ToString();
                am = " pm";
            }

            if (h.Length == 1)
                h = "0" + h;

            if (m.Length == 1)
                m = "0" + m;

            timeStamp = timeStamp + h + ":" + m + am;

            return timeStamp;
        }

        private static string ScrapeHtml(string fromThisUrl)
        {
            StringBuilder sb = new StringBuilder();
            string strLine = string.Empty;

            // Open the requested URL and Get the stream from the returned web response
            WebRequest req = WebRequest.Create(fromThisUrl);
            StreamReader stream = new StreamReader(req.GetResponse().GetResponseStream());

            // Read the stream a line at a time 
            while ((strLine = stream.ReadLine()) != null)
            {
                if (strLine.Length > 0) // Ignore blank lines
                    sb.Append(strLine);
            }
            stream.Close();

            return sb.ToString();
        }

        private static string GetHitsVotesScoreAndReturnAsTable(string html, string csv, string startReplace)
        {
            string startTag = "";
            string endTag = "";
            string[] urLs = csv.Split(Convert.ToChar(","));
            string created = string.Empty;
            string edited = string.Empty;
            string hits = string.Empty;
            string score = string.Empty;
            string votes = string.Empty;
            StringBuilder bldr = new StringBuilder();

            for (int i = 0; i < urLs.Length - 1; i++)
            // for (int i = 0; i < 1; i++)
            {
                if (i == 0)
                {
                    bldr.Append("<table id='myTable' class='normal tablesorter' border=1 cellpadding=4 cellspacing=3>\r\n");
                    bldr.Append("<thead>");
                    bldr.Append("<tr>");
                    bldr.Append("<th class='caption' style='padding: 5px;cursor:pointer;'>Name</th>");
                    bldr.Append("<th class='caption'  style='padding: 5px;cursor:pointer;'>Hits</th>");
                    bldr.Append("<th class='caption'  style='padding: 5px;cursor:pointer;'>Votes</th>");
                    bldr.Append("<th class='caption'  style='padding: 5px;cursor:pointer;'>Score</th>");
                    bldr.Append("<th class='caption'  style='padding: 5px;cursor:pointer;'>Created</th>");
                    bldr.Append("<th class='caption'  style='padding: 5px;cursor:pointer;'>Edited</th>");
                    bldr.Append("</tr>\r\n");
                    bldr.Append("</thead>\r\n");
                    bldr.Append("<tbody>\r\n");
                }

                try
                {
                    html = ScrapeHtml(urLs[i]);


                    //Get "Created/Edited" dates
                    startTag = "<strong>Created/Edited: </strong> ";
                    endTag = "<p><strong>Object ID: </strong>";
                    created = Substring(startTag, endTag, html, false, false).Trim();
                    string[] CE = created.Split(Convert.ToChar("/"));
                    created = CE[0].Trim();
                    edited = CE[1].Trim();

                    string[] Flip = created.Split(Convert.ToChar(","));    //Created = Flip[1] + "-" + Flip[0]; //2006-Jun 18
                    string[] MonthAndDay = Flip[0].Split(Convert.ToChar(" "));
                    created = Flip[1] + "-" + ConvertNamedMonthToInt(MonthAndDay[0]) + "-" + PadDay(MonthAndDay[1]);


                    Flip = edited.Split(Convert.ToChar(","));
                    MonthAndDay = Flip[0].Split(Convert.ToChar(" "));
                    edited = Flip[1] + "-" + ConvertNamedMonthToInt(MonthAndDay[0]) + "-" + PadDay(MonthAndDay[1]);



                    //Narrow down html
                    startTag = "<strong>Hits:";
                    endTag = "</span> Votes";
                    html = Substring(startTag, endTag, html, true, true);

                    //Get "hits" 
                    startTag = "<strong>Hits: ";
                    endTag = "<span style=";
                    hits = Substring(startTag, endTag, html, false, false); //returns something like this: 
                    hits = hits.Replace("&nbsp;", "").Trim();
                    hits = hits.Replace("</strong>", "").Trim();

                    //Get "Votes"  
                    startTag = "<span id=num_votes>";
                    endTag = "</span> Votes";
                    votes = Substring(startTag, endTag, html, false, false); //returns something like this: 16

                    //Get "Page Score" 
                    startTag = "<strong>Page Score: <span id=score >";
                    endTag = "</span>%</strong>";
                    score = Substring(startTag, endTag, html, false, false); //returns something like this: 88.43

                    //Get Mt Name
                    string mt = urLs[i].Replace("http://www.summitpost.org/", startReplace);
                    mt = Substring(startReplace, "/", mt, false, false);
                    mt = mt.Replace("-", "&nbsp;");

                    bldr.Append("<tr>\r\n");
                    bldr.Append("<td style='padding: 5px;'>");
                    bldr.Append("<a target='_blank' href='");
                    bldr.Append(urLs[i]);
                    bldr.Append("'><span style='text-transform:capitalize;'>");
                    bldr.Append(mt);
                    bldr.Append("</span></a></td><td style='padding: 5px;'>");
                    bldr.Append(hits);
                    bldr.Append("</td><td style='padding: 5px;'>");
                    bldr.Append(votes);
                    bldr.Append("</td><td style='padding: 5px;'>");
                    bldr.Append(score);
                    bldr.Append("</td>");
                    bldr.Append("<td style='padding: 5px;'>");
                    bldr.Append(created);
                    bldr.Append("</td><td style='padding: 5px;'>");
                    bldr.Append(edited);
                    bldr.Append("</td>");
                    bldr.Append("</tr>\r\n");
                }
                catch
                {

                }

                if (i == urLs.Length - 2)
                    bldr.Append("</tbody></table>\r\n");
            }

            return bldr.ToString();
        }

        private static string ConvertNamedMonthToInt(string namedMonth)
        {
            string retVal = namedMonth;
            string months = "jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec,";
            namedMonth = namedMonth.ToLower().Trim() + ",";

            if (months.IndexOf(namedMonth) < 0) return retVal;
            switch (namedMonth.Replace(",", ""))
            {
                case "jan":
                    retVal = "01";
                    break;
                case "feb":
                    retVal = "02";
                    break;
                case "mar":
                    retVal = "03";
                    break;
                case "apr":
                    retVal = "04";
                    break;
                case "may":
                    retVal = "05";
                    break;
                case "jun":
                    retVal = "06";
                    break;
                case "jul":
                    retVal = "07";
                    break;
                case "aug":
                    retVal = "08";
                    break;
                case "sep":
                    retVal = "08";
                    break;
                case "oct":
                    retVal = "10";
                    break;
                case "nov":
                    retVal = "11";
                    break;
                case "dec":
                    retVal = "12";
                    break;
                default:
                    break;
            }

            return retVal;
        }

        private static string GetUrLandShortenSubstring(string inHtml, out string outHtml)
        {
            string retVal = "";
            string s = "href='";
            string e = "</a>";

            //figure out where we want to begin the parsing at, as well as the length of the parse.
            int startIndex = inHtml.IndexOf(s) + s.Length;
            int endIndex = inHtml.IndexOf(e); //save this as later, when we shorten the substring, it will become the startIndex.
            int length = endIndex - startIndex;

            //extract the URL and some trailing data
            if (length > 0)
                retVal = inHtml.Substring(startIndex, length); // returns something like this "http://www.summitpost.org/mount-alderson/774289'>Mount Alderson"

            //Get ride of the trailing info
            try
            {
                e = "'>";
                startIndex = retVal.IndexOf(e);
                retVal = retVal.Substring(0, startIndex);
            }
            catch
            { }


            //Shorten up the substring by removing the section we just parsed data from
            startIndex = endIndex + e.Length;
            outHtml = inHtml.Substring(startIndex);

            return retVal;
        }

        private static string Substring(string startTag, string endTag, string subStringThis, bool includeStartTag, bool includeEndTag)
        {
            int startIndex = subStringThis.IndexOf(startTag);

            if (!includeStartTag)
                startIndex = startIndex + startTag.Length;

            int endIndex = subStringThis.IndexOf(endTag);

            if (includeEndTag)
                endIndex = endIndex + endTag.Length;

            int length = endIndex - startIndex;

            if (length > 0)
                subStringThis = subStringThis.ToString().Substring(startIndex, length);

            return subStringThis.Trim();
        }

        private static string PadDay(string day)
        {
            var retVal = day.Trim();

            if (retVal.Length == 1)
                retVal = "0" + retVal;

            return retVal;
        }


        private List<VmClimbYear> PutClimbsInColumns(List<VmClimb> climbs)
        {
            var climbYears = new List<VmClimbYear>();
            var itemsPerCol = new int[4];
            var grouped = climbs.GroupBy(y => y.Year).Select(group => new { Year = group.Key, Count = group.Count() });

            foreach (var year in grouped)
            {
                var thisYear = climbs.Where(y => y.Year == year.Year).ToList();
                int loopCounter = 0;
                var climbYear = new VmClimbYear
                {
                    Year = year.Year,
                    Col1 = new List<VmClimb>(),
                    Col2 = new List<VmClimb>(),
                    Col3 = new List<VmClimb>(),
                    Col4 = new List<VmClimb>()
                };

                CalculateColumnCounts(thisYear.Count, out itemsPerCol);

                foreach (var item in thisYear)
                {
                    loopCounter++;

                    if (loopCounter <= itemsPerCol[0])
                    {
                        climbYear.Col1.Add(item);
                    }
                    else if (loopCounter <= (itemsPerCol[0] + itemsPerCol[1]))
                    {
                        climbYear.Col2.Add(item);
                    }
                    else if (loopCounter <= (itemsPerCol[0] + itemsPerCol[1] + itemsPerCol[2]))
                    {
                        climbYear.Col3.Add(item);
                    }
                    else
                    {
                        climbYear.Col4.Add(item);
                    }
                }
                climbYears.Add(climbYear);
            }
            return climbYears;
        }


        private void CalculateColumnCounts(int totalItems, out int[] colCounts)
        {
            var itemsPerCol = new int[4];
            int remain = Convert.ToInt32(decimal.Remainder(totalItems, 4m));
            itemsPerCol[0] = itemsPerCol[1] = itemsPerCol[2] = itemsPerCol[3] = totalItems / 4;

            switch (remain)
            {
                case 1:
                    itemsPerCol[0]++;
                    break;
                case 2:
                    itemsPerCol[0]++;
                    itemsPerCol[1]++;
                    break;
                case 3:
                    itemsPerCol[0]++;
                    itemsPerCol[1]++;
                    itemsPerCol[2]++;
                    break;
            }

            colCounts = itemsPerCol;
        }
        #endregion
    }
}