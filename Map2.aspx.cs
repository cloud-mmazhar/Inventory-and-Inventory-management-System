using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Map2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {

        ImageMap i = new ImageMap();

        i = (ImageMap)sender;

        Session["postbackval"] = e.PostBackValue;
        Panel1.Visible = true;

    }


    protected void btnPersonalDetails_Click(object sender, EventArgs e)
    {
        string postbackval = Convert.ToString(Session["postbackval"]);
        //MapBL mbl = new MapBL();
        Map2BL mbl = new Map2BL(postbackval);

        try
        {
            string result = mbl.PersonalDetails();
            //Label1.Text = result;
            if (!string.IsNullOrEmpty(result))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "info", "alert('" + result + "');", true);
            }
            Panel1.Visible = false;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    //protected void imgbtnClose_Click(object sender, ImageClickEventArgs e)
    //{
    //    //Session.Remove("x");
    //    //Session.Remove("y");
    //   // Panel1.Visible = false;
    //}
}