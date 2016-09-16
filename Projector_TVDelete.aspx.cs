using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Projector_TVDelete : System.Web.UI.Page
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
        cmd1 = new SqlCommand("Select * from Projector_TV where Asset_no='" + DropDownList1.SelectedItem.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        dr.Read();

        txtSr_no.Text = dr[0].ToString();
        txtModel_no.Text = dr[1].ToString();
        txtAsset_no.Text = dr[2].ToString();
        txtSerial_no.Text = dr[3].ToString();
        txtWarranty.Text = dr[4].ToString();
        txtFloor.Text = dr[5].ToString();

        con.Close();
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        Projector_TVBL ptbl = new Projector_TVBL(Convert.ToInt64(txtSr_no.Text), txtModel_no.Text, Convert.ToInt64(txtAsset_no.Text), Convert.ToInt64(txtSerial_no.Text), txtWarranty.Text, Convert.ToInt16(txtFloor.Text));
        ptbl.Delete();
        Response.Redirect("InventAdmin.aspx");
    }
}