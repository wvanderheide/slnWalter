<%@ Page Language="C#" Debug="true" EnableViewState="false" %>

<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Text" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">

    <script language="C#" runat="server">        
        private string _subString = string.Empty;
        private string _csvUrls = string.Empty;
        private const string _startReplace = "||s||";

        protected void Page_Load(object sender, EventArgs e)
        {
            //lt1.Text = HttpUtility.UrlDecode("https%3A%2F%2Fscontent-sjc2-1.xx.fbcdn.net%2Fhphotos-xat1%2Ft31.0-8%2F12038709_10153013807076441_6923057461943687752_o.jpg");

            // txtUserPageURL.Attributes.Add("onfocus", "this.value=''");

            if (Page.IsPostBack)
            {
                //Get the HTML for another webpage and save it to _subString
                _subString = ScrapeHTML(txtUserPageURL.Text);
				
				string img = _subString; //save all the html to later get the user image from it.
                //&amp
	            string startTag ="&amp;src=";
				string endTag = "&amp;size=";


				img = img.Replace(startTag, startTag + ",");
                string[] URLs = img.Split(Convert.ToChar(","));
                string temp = string.Empty;
                string lag = "";
                lt1.Text = "URL length = " + URLs.Length + "<hr />";
				
                for (int i = 0; i < URLs.Length; i++)
                {
                    temp = HttpUtility.UrlDecode(fnSubstring("https", endTag, URLs[i], true, false));
                    //temp = HttpUtility.UrlDecode(URLs[i]);

                    if (temp != lag)
                    {
                        if (temp.IndexOf("https:") == 0)
                        {
							lt1.Text += "<li><img src='" + temp.Replace("src=https:", "https:") + "' /></li>\n\n<br />";
							//lt1.Text += temp + "\n\n<br />";
                            lag = temp;
                        }
                    }
                }

                lt1.Text = "<ol>" + lt1.Text + "</ol>";
            }
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
                    bldr.Append("<th class='caption' style='cursor:pointer;'>Name</th>");
                    bldr.Append("<th class='caption'  style='cursor:pointer;'>Hits</th>");
                    bldr.Append("<th class='caption'  style='cursor:pointer;'>Votes</th>");
                    bldr.Append("<th class='caption'  style='cursor:pointer;'>Score</th>");
                    bldr.Append("<th class='caption'  style='cursor:pointer;'>Created</th>");
                    bldr.Append("<th class='caption'  style='cursor:pointer;'>Edited</th>");
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
                    bldr.Append("<td>");
                    bldr.Append("<a target='_blank' href='");
                    bldr.Append(URLs[i]);
                    bldr.Append("'><span style='text-transform:capitalize;'>");
                    bldr.Append(mt);
                    bldr.Append("</span></a></td><td align='right'>");
                    bldr.Append(Hits);
                    bldr.Append("</td><td align='right'>");
                    bldr.Append(Votes);
                    bldr.Append("</td><td>");
                    bldr.Append(Score);
                    bldr.Append("</td>");
                    bldr.Append("<td>");
                    bldr.Append(Created);
                    bldr.Append("</td><td>");
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

        private string GetURLandShortenSubstring()
        {
            string retVal = "";
            string s = "href='";
            string e = "</a>";

            //figure out where we want to begin the parsing at, as well as the length of the parse.
            int startIndex = _subString.IndexOf(s) + s.Length;
            int endIndex = _subString.IndexOf(e); //save this as later, when we shorten the substring, it will become the startIndex.
            int length = endIndex - startIndex;

            //extract the URL and some trailing data
            if (length > 0)
                retVal = _subString.Substring(startIndex, length); // returns something like this "http://www.summitpost.org/mount-alderson/774289'>Mount Alderson"

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
            _subString = _subString.Substring(startIndex);

            return retVal;
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
    </script>
</head>
<body>
    <form id="form1" runat="server">
       Scrap FB
    <br />
        <br />
        <b>Step 1, get html from FB Photo Album, and make an HTML page from it:</b>
        <br />
        For example http://walter/WebForm1.html
        <br />
        <asp:TextBox ID="txtUserPageURL" runat="server" Width="400" Text="http://walter/WebForm1.html"></asp:TextBox>
        <asp:Button ID="btnGo" runat="server" Text="Go!" />
        <hr />
        <div id="DivWait" style="display: none">
            <img src="img/loading.gif" />
            Loading data, please wait. <span id="sp1" style='background-color: Red; color: White; font-weight: bold;'>&nbsp;This may take several minutes...&nbsp;</span>
        </div>
        <div id="DivData">
            <asp:Literal ID="lt1" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
