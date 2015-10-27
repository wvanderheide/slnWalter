<%@ Page Language="C#" Debug="true" EnableViewState="false" %>

<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Text" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title runat="server" id="ThePageTitle">Mountains & Rocks Stats</title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.tablesorter.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#myTable").tablesorter();
        });
    </script>
    <script>
        function warn(clientId, clientId2) {
            if (confirm('This may take several minutes, do you wish to continue?')) {
                if (checkURL(clientId)) {
                    //document.getElementById(clientId2).disabled = true;  //this stops the post, so don't use it!
                    $('#' + clientId2).hide();
                    $('#DivData').hide();  //hide the previous results. 
                    $('#DivWait').slideDown('slow');
                    return true;
                }
                else {
                    alert('URL is invalid. Please read the instructions on the page.');
                    return false;
                }
            }
            else {
                return false;
            }
        }

        function checkURL(TheID) {
            var v = document.getElementById(TheID).value;
            v = $.trim(v);
            document.getElementById(TheID).value = v;
            var i = v.indexOf("http://www.summitpost.org/users/");

            if (i == 0 && i < v.length)
                return true;
            else
                return false;
        }
    </script>
    <script language="C#" runat="server">        
        private string _subString = string.Empty;
        private string _csvUrls = string.Empty;
        private const string _startReplace = "||s||";

        protected void Page_Load(object sender, EventArgs e)
        {
            //lt1.Text = HttpUtility.UrlDecode("https%3A%2F%2Fscontent-sjc2-1.xx.fbcdn.net%2Fhphotos-xat1%2Ft31.0-8%2F12038709_10153013807076441_6923057461943687752_o.jpg");
            
            // txtUserPageURL.Attributes.Add("onfocus", "this.value=''");
            btnGo.Attributes.Add("onclick", "return warn('" + txtUserPageURL.ClientID + "', '" + btnGo.ClientID + "');");

            if (Page.IsPostBack)
            {
                txtUserPageURL.Text = txtUserPageURL.Text.Trim().ToLower();

                //Get the HTML for another webpage and save it to _subString
                _subString = ScrapeHTML(txtUserPageURL.Text); //"http://www.summitpost.org/users/dean/1160"); //"http://www.summitpost.org/users/vanman798/23249");

                string img = _subString; //save all the html to later get the user image from it.

                string startTag = "<span class=power>";
                string endTag = "<b>Occupation: </b>";

                string power = fnSubstring(startTag, endTag, _subString, true, false); // returns something like this: <span class=power> Power = 139 (Vote Weight = 88.57%)<span class="ajax_info" onClick='javascript:get_help_js("1111171270", 171270)'><img src='/images/layout/info.png'></img></span>   <div id='1111171270' class="helpdiv" style="display: none;">     Loading... </div></span></p><br><p>

                power = fnSubstring(startTag, @"<span class=""ajax_info""", power, false, false); // returns something like this: Power = 139 (Vote Weight = 88.57%)


                lt1.Text = power;

                //Substring _subString
                startTag = "My Mountains";
                endTag = "My Routes";
                _subString = fnSubstring(startTag, endTag, _subString, true, false);

                //lt1.Text = _subString;

                //Get the My Mountains title
                string title = _subString;
                endTag = "</div>";
                title = fnSubstring(startTag, endTag, title, true, false);
                string userName = txtUserPageURL.Text;  //http://www.summitpost.org/users/vanman798/23249 
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
                lt1.Text = "<h3 style='margin:0;'>"
                    + "<a style='text-decoration:none; color:black;' href='" + txtUserPageURL.Text + "' target='_blank'>"
                    + title.Replace("My", userName)
                    + "</a></h3>\r\n";

                //time stamp
                DateTime RightNow = DateTime.Now;
                string d = System.Globalization.CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(RightNow.Month)
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

                d = d + h + ":" + m + am;

                //Update page title
                ThePageTitle.Text = title.Replace("My", userName) + " : " + d;

                //Get just the <table> of My Mountains  
                startTag = "<center>";
                endTag = "</center>";
                _subString = fnSubstring(startTag, endTag, _subString, false, false);


                //Make the URLs absolute
                _subString = _subString.Replace("href='/", "href='http://www.summitpost.org/");

                //Loop substring, all the while extracting URLs from it and then shortening it, until it runs out of anchor tags
                while (_subString.IndexOf("</a>") >= 0)
                {
                    //Make a CVS list of the URLs, each these pages in turn will need to be screen scraped
                    _csvUrls = _csvUrls + GetURLandShortenSubstring() + ",";
                }

                //lt1.Text += GetHitsVotesScoreAndReturnAsTable();


                lt1.Text = lt1.Text + "<div style='float: left'>" + d + GetHitsVotesScoreAndReturnAsTable() + "<i>(Click a column header above to sort by that column)</i></div>";
                lt1.Text = lt1.Text + "<div style='float: left; padding-left:5px;'>" + power + "<br />"
                    + "<a style='text-decoration:none; color:black;' href='" + txtUserPageURL.Text + "' target='_blank'>" + img + "</a></div>";
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
        <a href="http://www.summitpost.org/" target="_blank">
            <img src="http://www.summitpost.org/images/layout/logo2.gif" alt="SummitPost.org"
                border="0"></a>
        <br />
        <br />
        This tool looks up the hits, votes, and page score for all the mountains & rocks
    belonging to a particular summitpost user.
    <br />
        <br />
        First you will need to obtain the User Page URL of the summitpost user you seeking
    Mountain & Rock statistics for. Every mountain page on summitpost has a "Page By"
    credit, click that link and you will be taken to that users user page. Copy the
    URL from the browsers address bar, and paste it in the textbox below. Next hit "Go!",
    and wait for the data to come back. It can take a long time for the data to come
    back because this page has to open all the Mountain & Rock pages of the that particular
    user to get the statistics. So please be patient.
    <br />
        <br />
        <b>Please enter in the URL of the summitpost User's Page.</b>
        <br />
        For example <i>http://www.summitpost.org/users/dean/1160</i>, or <i>http://www.summitpost.org/users/mrwasatch/405</i>
        <br />
        <asp:TextBox ID="txtUserPageURL" runat="server" Width="400" Text="http://www.summitpost.org/users/vanman798/23249"></asp:TextBox>
        <asp:Button ID="btnGo" runat="server" Text="Go!" />
        <hr />
        <div id="DivWait" style="display: none">
            <img src="/images/loading.gif" />
            Loading data, please wait. <span id="sp1" style='background-color: Red; color: White; font-weight: bold;'>&nbsp;This may take several minutes...&nbsp;</span>
        </div>
        <div id="DivData">
            <asp:Literal ID="lt1" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
