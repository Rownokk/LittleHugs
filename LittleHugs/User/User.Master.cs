using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LittleHugs.User
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Url.AbsoluteUri.ToString().Contains("Default.aspx"))
            {
                //Load The Control
                Control sliderUserControl = (Control)Page.LoadControl("SliderUserControl.ascx");
                pnlSliderUC.Controls.Add(sliderUserControl);                                      
            }
        }
    }
}