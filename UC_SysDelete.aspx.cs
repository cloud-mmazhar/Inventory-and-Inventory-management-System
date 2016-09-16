using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UC_SysDelete : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd1;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ToString());

        if (!IsPostBack)
        {
            DropDownList1.DataTextField = "Asset_no";

            DropDownList1.DataValueField = "Asset_no";

            DropDownList1.DataBind();

            DropDownList1.Items.Insert(0, "--SELECT--");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sName = DropDownList1.SelectedItem.ToString();
        txtAsset_no.Text = sName;

        con.Open();
        cmd1 = new SqlCommand("Select * from UC_System where Asset_no='" + DropDownList1.SelectedItem.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        dr.Read();

        txtSr_no.Text = dr[0].ToString();
        txtSys_name.Text = dr[1].ToString();
        txtSys_comp.Text = dr[2].ToString();
        txtSerial_no.Text = dr[3].ToString();
        txtAsset_no.Text = dr[4].ToString();

        con.Close();
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        UC_SysBL ucbl = new UC_SysBL(Convert.ToInt64(txtSr_no.Text), txtSys_name.Text, txtSys_comp.Text, Convert.ToInt64(txtSerial_no.Text), Convert.ToInt64(txtAsset_no.Text));
        ucbl.Delete();
        Response.Redirect("InventAdmin.aspx");
    }
}