using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using Walter.ViewModels;

namespace Walter.Models
{
    public class MountainBusinessLayer
    {
        private string _subString = string.Empty;
        private string _csvUrls = string.Empty;
        private const string _startReplace = "||s||";

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

        public string GetSpHtml(string Url)
        {
            string retVal = string.Empty;

            _subString = ScrapeHTML(Url);

            string img = _subString; //save all the html to later get the user image from it.

            string startTag = "<span class=power>";
            string endTag = "<b>Occupation: </b>";

            string power = fnSubstring(startTag, endTag, _subString, true, false); // returns something like this: <span class=power> Power = 139 (Vote Weight = 88.57%)<span class="ajax_info" onClick='javascript:get_help_js("1111171270", 171270)'><img src='/images/layout/info.png'></img></span>   <div id='1111171270' class="helpdiv" style="display: none;">     Loading... </div></span></p><br><p>

            power = fnSubstring(startTag, @"<span class=""ajax_info""", power, false, false); // returns something like this: Power = 139 (Vote Weight = 88.57%)


            //Substring subString
            startTag = "My Mountains";
            endTag = "My Routes";
            _subString = fnSubstring(startTag, endTag, _subString, true, false);


            //Get the My Mountains title
            string title = _subString;
            endTag = "</div>";
            title = fnSubstring(startTag, endTag, title, true, false);
            string userName = Url;  //http://www.summitpost.org/users/vanman798/23249 
            userName = userName.Replace("http://www.summitpost.org/users/", _startReplace);
            userName = userName.Replace("/", "/");
            userName = fnSubstring(_startReplace, "/", userName, false, false);

            //<a href='/vanman798/769161'><img height='500' width='375' alt="vanman798" src='/images/medium/769161.JPG'></img></a>
            startTag = "<a href='/" + userName + "/";
            endTag = "<span class=basics>";
            img = fnSubstring(startTag, endTag, img, false, false);
            startTag = "src='/";
            endTag = "'></img>";
            img = fnSubstring(startTag, endTag, img, true, false);
            img = img.Replace("src='/", "src='http://www.summitpost.org/");
            img = "<img " + img + "' alt='" + userName + "' title='" + power + "' />";

            userName = userName.ToUpper() + "'s ";
            //Display the title
            retVal += "<h3 style='margin:0;'>"
                + "<a style='text-decoration:none; color:black;' href='" + Url + "' target='_blank'>"
                + title.Replace("My", userName)
                + "</a></h3>\r\n";

            //time stamp
            DateTime RightNow = DateTime.Now;
            string timeStamp = System.Globalization.CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(RightNow.Month)
                        + " " + RightNow.Day.ToString() + ", "
                        + RightNow.Year.ToString() + " ";
            string h = RightNow.Hour.ToString();
            string m = RightNow.Minute.ToString();

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


            //Get just the <table> of My Mountains  
            startTag = "<center>";
            endTag = "</center>";
            _subString = fnSubstring(startTag, endTag, _subString, false, false);


            //Make the URLs absolute
            _subString = _subString.Replace("href='/", "href='http://www.summitpost.org/");

            //Loop substring, all the while extracting URLs from it and then shortening it, until it runs out of anchor tags
            string yy = string.Empty;
            while (_subString.IndexOf("</a>") >= 0)
            {
                //Make a CVS list of the URLs, each these pages in turn will need to be screen scraped
                _csvUrls = _csvUrls + GetURLandShortenSubstring(_subString, out yy) + ",";
                _subString = yy;
            }
            
            retVal += "<div style='float: left'>" + timeStamp + GetHitsVotesScoreAndReturnAsTable()
                + "</div>"; //<i>(Click a column header above to sort by that column)</i>
            retVal += "<div style='float: left; padding-left:5px;'>" + power + "<br />"
                + "<a style='text-decoration:none; color:black;' href='" + Url + "' target='_blank'>" + img + "</a></div>";

            return retVal;
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

        private string ScrapeHTML(string FromThisURL)
        {
            StringBuilder sb = new StringBuilder();
            string strLine = string.Empty;

            // Open the requested URL and Get the stream from the returned web response
            WebRequest req = WebRequest.Create(FromThisURL);
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

        private string GetHitsVotesScoreAndReturnAsTable()
        {
            string startTag = "";
            string endTag = "";
            string[] URLs = _csvUrls.Split(Convert.ToChar(","));
            string Created = string.Empty;
            string Edited = string.Empty;
            string Hits = string.Empty;
            string Score = string.Empty;
            string Votes = string.Empty;
            StringBuilder bldr = new StringBuilder();

            for (int i = 0; i < URLs.Length - 1; i++)
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
                    _subString = ScrapeHTML(URLs[i]);


                    //Get "Created/Edited" dates
                    startTag = "<strong>Created/Edited: </strong> ";
                    endTag = "<p><strong>Object ID: </strong>";
                    Created = fnSubstring(startTag, endTag, _subString, false, false).Trim();
                    string[] CE = Created.Split(Convert.ToChar("/"));
                    Created = CE[0].Trim();
                    Edited = CE[1].Trim();

                    string[] Flip = Created.Split(Convert.ToChar(","));    //Created = Flip[1] + "-" + Flip[0]; //2006-Jun 18
                    string[] MonthAndDay = Flip[0].Split(Convert.ToChar(" "));
                    Created = Flip[1] + "-" + fnConvertNamedMonthToInt(MonthAndDay[0]) + "-" + fnPadDay(MonthAndDay[1]);


                    Flip = Edited.Split(Convert.ToChar(","));
                    MonthAndDay = Flip[0].Split(Convert.ToChar(" "));
                    Edited = Flip[1] + "-" + fnConvertNamedMonthToInt(MonthAndDay[0]) + "-" + fnPadDay(MonthAndDay[1]);



                    //Narrow down _substring
                    startTag = "<strong>Hits:";
                    endTag = "</span> Votes";
                    _subString = fnSubstring(startTag, endTag, _subString, true, true);

                    //Get "hits" 
                    startTag = "<strong>Hits: ";
                    endTag = "<span style=";
                    Hits = fnSubstring(startTag, endTag, _subString, false, false); //returns something like this: 
                    Hits = Hits.Replace("&nbsp;", "").Trim();
                    Hits = Hits.Replace("</strong>", "").Trim();

                    //Get "Votes"  
                    startTag = "<span id=num_votes>";
                    endTag = "</span> Votes";
                    Votes = fnSubstring(startTag, endTag, _subString, false, false); //returns something like this: 16

                    //Get "Page Score" 
                    startTag = "<strong>Page Score: <span id=score >";
                    endTag = "</span>%</strong>";
                    Score = fnSubstring(startTag, endTag, _subString, false, false); //returns something like this: 88.43

                    //Get Mt Name
                    string mt = URLs[i].Replace("http://www.summitpost.org/", _startReplace);
                    mt = fnSubstring(_startReplace, "/", mt, false, false);
                    mt = mt.Replace("-", "&nbsp;");

                    bldr.Append("<tr>\r\n");
                    bldr.Append("<td style='padding: 5px;'>");
                    bldr.Append("<a target='_blank' href='");
                    bldr.Append(URLs[i]);
                    bldr.Append("'><span style='text-transform:capitalize;'>");
                    bldr.Append(mt);
                    bldr.Append("</span></a></td><td style='padding: 5px;'>");
                    bldr.Append(Hits);
                    bldr.Append("</td><td style='padding: 5px;'>");
                    bldr.Append(Votes);
                    bldr.Append("</td><td style='padding: 5px;'>");
                    bldr.Append(Score);
                    bldr.Append("</td>");
                    bldr.Append("<td style='padding: 5px;'>");
                    bldr.Append(Created);
                    bldr.Append("</td><td style='padding: 5px;'>");
                    bldr.Append(Edited);
                    bldr.Append("</td>");
                    bldr.Append("</tr>\r\n");
                }
                catch
                {

                }

                if (i == URLs.Length - 2)
                    bldr.Append("</tbody></table>\r\n");
            }

            return bldr.ToString();
        }

        private string fnConvertNamedMonthToInt(string NamedMonth)
        {
            string RetVal = NamedMonth;
            string months = "jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec,";
            NamedMonth = NamedMonth.ToLower().Trim() + ",";

            if (months.IndexOf(NamedMonth) >= 0)
            {
                switch (NamedMonth.Replace(",", ""))
                {
                    case "jan":
                        RetVal = "01";
                        break;
                    case "feb":
                        RetVal = "02";
                        break;
                    case "mar":
                        RetVal = "03";
                        break;
                    case "apr":
                        RetVal = "04";
                        break;
                    case "may":
                        RetVal = "05";
                        break;
                    case "jun":
                        RetVal = "06";
                        break;
                    case "jul":
                        RetVal = "07";
                        break;
                    case "aug":
                        RetVal = "08";
                        break;
                    case "sep":
                        RetVal = "08";
                        break;
                    case "oct":
                        RetVal = "10";
                        break;
                    case "nov":
                        RetVal = "11";
                        break;
                    case "dec":
                        RetVal = "12";
                        break;
                    default:
                        break;
                }
            }

            return RetVal;
        }

        private string GetURLandShortenSubstring(string xx, out string yy)
        {
            string retVal = "";
            string s = "href='";
            string e = "</a>";

            //figure out where we want to begin the parsing at, as well as the length of the parse.
            int startIndex = xx.IndexOf(s) + s.Length;
            int endIndex = xx.IndexOf(e); //save this as later, when we shorten the substring, it will become the startIndex.
            int length = endIndex - startIndex;

            //extract the URL and some trailing data
            if (length > 0)
                retVal = xx.Substring(startIndex, length); // returns something like this "http://www.summitpost.org/mount-alderson/774289'>Mount Alderson"

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
            yy = xx.Substring(startIndex);

            return retVal;
        }

        private string fnSubstring(string startTag, string endTag, string stringToSubstring, bool IncludeStartTag, bool IncludeEndTag)
        {
            int startIndex = stringToSubstring.IndexOf(startTag);

            if (!IncludeStartTag)
                startIndex = startIndex + startTag.Length;

            int endIndex = stringToSubstring.IndexOf(endTag);

            if (IncludeEndTag)
                endIndex = endIndex + endTag.Length;

            int length = endIndex - startIndex;

            if (length > 0)
                stringToSubstring = stringToSubstring.ToString().Substring(startIndex, length);

            return stringToSubstring.Trim();
        }

        private string fnPadDay(string day)
        {
            string RetVal = day.Trim();

            if (RetVal.Length == 1)
                RetVal = "0" + RetVal;

            return RetVal;
        }
    }
}