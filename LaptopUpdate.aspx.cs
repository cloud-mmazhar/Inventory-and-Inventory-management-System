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


public partial class LaptopUpdate : System.Web.UI.Page
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
        cmd1 = new SqlCommand("Select * from Laptop where Asset_no='" + DropDownList1.SelectedItem.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        dr.Read();
        txtSr_no.Text = dr[0].ToString();
        txtUserName.Text = dr[1].ToString();
        txtDept.Text = dr[2].ToString();
        txtSerial_no.Text = dr[3].ToString();
        txtMake_Date.Text = dr[4].ToString();
        txtProcessor.Text = dr[5].ToString();
        txtRAM.Text = dr[6].ToString();        
        txtHardDisk.Text = dr[7].ToString();
        txtCD_Drive.Text = dr[8].ToString();
        txtAsset_no.Text = dr[9].ToString();
        txtInstallation.Text = dr[10].ToString();
        txtWarranty.Text = dr[11].ToString();
        txtName.Text = dr[12].ToString();
        txtPart.Text = dr[13].ToString();
        txtPart_no.Text = dr[14].ToString();
        txtWLAN_MAC.Text = dr[15].ToString();
        txtFloor.Text = dr[16].ToString();
        txtX_Cord.Text = dr[17].ToString();
        txtY_Cord.Text = dr[18].ToString();

        con.Close();
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        LaptopBL lbl = new LaptopBL(Convert.ToInt64(txtSr_no.Text), txtUserName.Text, txtDept.Text, Convert.ToInt64(txtSerial_no.Text), Convert.ToDateTime(txtMake_Date.Text), txtProcessor.Text, txtRAM.Text, txtHardDisk.Text, txtCD_Drive.Text, Convert.ToInt64(txtAsset_no.Text), txtInstallation.Text, txtWarranty.Text, txtName.Text, txtPart.Text, Convert.ToInt64(txtPart_no.Text), txtWLAN_MAC.Text, Convert.ToInt16(txtFloor.Text), Convert.ToInt16(txtX_Cord.Text), Convert.ToInt16(txtY_Cord.Text));
        lbl.Update();
        Response.Redirect("InventAdmin.aspx");
    }
}