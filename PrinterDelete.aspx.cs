using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

public partial class PrinterDelete : System.Web.UI.Page
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
        cmd1 = new SqlCommand("Select * from Printer where Asset_no='" + DropDownList1.SelectedItem.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        dr.Read();

        txtSr_no.Text = dr[0].ToString();
        txtMake_Model.Text = dr[1].ToString();
        txtSerial_no.Text = dr[2].ToString();
        txtAsset_no.Text = dr[3].ToString();
        txtPart_no.Text = dr[4].ToString();
        txtWarranty.Text = dr[5].ToString();
        txtFloor.Text = dr[6].ToString();
        txtX_Cord.Text = dr[7].ToString();
        txtY_Cord.Text = dr[8].ToString();

        con.Close();
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        PrinterBL pbl = new PrinterBL(Convert.ToInt64(txtSr_no.Text), txtMake_Model.Text, Convert.ToInt64(txtSerial_no.Text), Convert.ToInt64(txtAsset_no.Text), Convert.ToInt64(txtPart_no.Text), txtWarranty.Text, Convert.ToInt16(txtFloor.Text), Convert.ToInt16(txtX_Cord.Text), Convert.ToInt16(txtY_Cord.Text));
        pbl.Delete();
        Response.Redirect("InventAdmin.aspx");
    }
}