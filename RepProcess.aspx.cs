using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class RepProcess : System.Web.UI.Page
{
    SqlConnection con1;
    SqlCommand cmdinv;


    protected void Page_Load(object sender, EventArgs e)
    {
        con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ToString());
        if (!IsPostBack)
        {
            DropDownList1.DataTextField = "ProjectName";
            DropDownList1.DataValueField = "ProjectName";
            DropDownList1.DataBind();
        }


       
    }
    protected void btn_Go_Click(object sender, EventArgs e)
    {
        string pName = DropDownList1.SelectedItem.ToString();
        txtProj_Name.Text = pName;
        con1.Open();

        cmdinv = new SqlCommand("Select * from ProjectData where ProjectName='" + DropDownList1.SelectedItem.Text + "'", con1);
       
        //  cmd1.Parameters.Add(new SqlParameter("@Log_ID", SqlDbType.VarChar, 50));
        SqlDataReader dr1 = cmdinv.ExecuteReader();
        dr1.Read();

        txtInvoice_No.Text = dr1[0].ToString();
        txtInvoice_Date.Text = dr1[1].ToString();
        txtSplr_Name.Text = dr1[2].ToString();
        txtProj_Name.Text = dr1[3].ToString();
        txtCategory.Text = dr1[4].ToString();
      

        con1.Close();
    }
}