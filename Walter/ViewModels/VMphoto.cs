namespace Walter.ViewModels
{
    public class VmPhoto 
    {
        public string Title { get; set; }
        public string Url { get; set; }
        public int Day { get; set; }
        public int Month { get; set; }
        public int Year { get; set; }
        public int Id { get; set; }

        public string TripReportURL { get; set; }


        public string TitleWithIcon
        {
            get {

                string retVal = Title;

                 if (Url.ToLower().IndexOf("picasa") >= 0)
                {
                    retVal = "<span style=\"color:red\" title=\"Hosted on picasaweb.google.com\"><i class=\"fa fa-picture-o\" aria-hidden=\"true\"></i></span> " + Title;
                }
                else if (Url.ToLower().IndexOf("shutter") >= 0)
                {
                    retVal = "<span style=\"color:gray\" title=\"Hosted on ShuffterFly.com\"><i class=\"fa fa-file-image-o\" aria-hidden=\"true\"></i></span> " + Title;
                }
                else if (Url.ToLower().IndexOf("facebook") >= 0)
                {
                    retVal = "<span style=\"color:gray\" title=\"Hosted on facebook.com\"><i class=\"fa fa-facebook-official\" aria-hidden=\"true\"></i></span> " + Title;
                }
                else if (Url.ToLower().IndexOf("goo.gl/") >= 0)
                {
                    retVal = "<span style=\"color:gray\" title=\"Hosted on photos.google.com\"><i class=\"fa fa-google-plus-official\" aria-hidden=\"true\"></i></span> " + Title;
                }

                return retVal;
            }
        }

    }
}