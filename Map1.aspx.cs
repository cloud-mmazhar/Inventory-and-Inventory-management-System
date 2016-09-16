using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Map1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=A:\Invoice-Inventory Management System\App_Data\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
            con.Open();
        //con.Open();
        SqlCommand cmd = new SqlCommand("select Emp_name from  EmployeeData where datepart(mm,Birth_date)=datepart(mm,getdate()) and datepart(dd,Birth_date)=datepart(dd,getdate())", con);
        // SqlDataReader dr = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);

        int[] x = new int[dt.Rows.Count];
        int[] y = new int[dt.Rows.Count];

        //ArrayList x=new ArrayList();
        //ArrayList y = new ArrayList();
        int i = 0;

        //while (dr.Read())
        int k = 0;
        while (i < dt.Rows.Count)
        {

            //Label1.Text += dr[0].ToString();
            //SqlCommand cmd1 = new SqlCommand("select X_Cord, Y_Cord from EmployeeData where  Emp_Name='"+ dr[0].ToString() + "'", con);
            SqlCommand cmd1 = new SqlCommand("select X_Cord, Y_Cord from EmployeeData where  Emp_Name='" + dt.Rows[i].ItemArray[0].ToString() + "'", con);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataReader dr1 = cmd1.ExecuteReader(CommandBehavior.CloseConnection);

            dr1.Read();

            x[k] = Convert.ToInt32(dr1[0]);
            y[k] = Convert.ToInt32(dr1[1]);
            k++;

            //dr1.Close();
            //dr1.Dispose();

            cmd1.Dispose();
            con.Close();
            i++;
        }

        Image[] img = new Image[dt.Rows.Count];


        Panel[] p = new Panel[dt.Rows.Count];

        for (int j = 0; j < dt.Rows.Count; j++)
        {


            img[j] = new Image();
            img[j].ImageUrl = "close-icon-red-small.png";
            img[j].Width = 10;
            img[j].Height = 10;

            p[j] = new Panel();
            p[j].Width = 10;
            p[j].Height = 10;

            //int xc1= 505+ x[j];
            //int yc1 = 237 + y[j];

            int xc1 = 265 + x[j];
            int yc1 = 525 + y[j];
            string xc = xc1.ToString();
            string yc = yc1.ToString();

            //p[j].Attributes.Add("style", "position:absolute;left:80px;top:80px");
            //p[j].Attributes.Add("style", "position:absolute;left:" + y[j].ToString() + "px;top:" + x[j].ToString() + "px;z-index=1");

            p[j].Attributes.Add("style", "position:absolute;left:" + xc + "px;top:" + yc + "px;z-index=1");
            p[j].Controls.Add(img[j]);

            p[j].Visible = true;
            this.Controls.Add(p[j]);

            //con.Close();
        }
        con.Close();
    }

    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {

        ImageMap i = new ImageMap();
        i = (ImageMap)sender;
       
        //HotSpot z = i.HotSpots[0];

        //string coor = z.GetCoordinates();
        ////Response.RedirectPermanent("ImgButton.aspx");
        ////Response.Write(coor);
        //string[] del = coor.Split(',');

        //Session["x"] = del[0].ToString();

        //Session["y"] = del[1].ToString();

        Session["postbackval"] = e.PostBackValue;
        Panel1.Visible = true;
    }


    protected void btnPersonalDetails_Click(object sender, EventArgs e)
    {
        string postbackval = Convert.ToString(Session["postbackval"]);
        //MapBL mbl = new MapBL();
        Map1BL mbl = new Map1BL(postbackval);

        try
        {
            string result = mbl.PersonalDetails();
            //Label1.Text = result;
            if (!string.IsNullOrEmpty(result))
            {
                //Response.Write("<script>alert('pankti')</script>");
                ClientScript.RegisterStartupScript(this.GetType(), "info", "alert('" + result + "');", true);
            }
            Panel1.Visible = false;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void imgbtnClose_Click(object sender, ImageClickEventArgs e)
    {
        //Session.Remove("x");
        //Session.Remove("y");
         Panel1.Visible = false;
    }

    protected void btnHardware_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd1 = new SqlCommand("Select Category from EmpAsset,EmployeeData where EmployeeData.PS_no=EmpAsset.PS_no and Postback='" + Convert.ToString(Session["postbackval"]) + "'", con);

        SqlDataReader dr1 = cmd1.ExecuteReader();

        string ans="";

        while (dr1.Read())
        {
            ans += dr1[0].ToString() + "\\n";

        }
            if (!string.IsNullOrEmpty(ans))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "info", "alert('" + ans + "');", true);
            }
        
        con.Close();
    }
}