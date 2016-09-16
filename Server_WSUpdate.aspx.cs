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

public partial class Server_WSUpdate : System.Web.UI.Page
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
        cmd1 = new SqlCommand("Select * from Server_Workstation where Asset_no='" + DropDownList1.SelectedItem.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        dr.Read();

        txtSr_no.Text = dr[0].ToString();
        txtModel_no.Text = dr[1].ToString();        
        txtSerial_no.Text = dr[2].ToString();
        txtAsset_no.Text = dr[3].ToString();
        txtOS.Text = dr[4].ToString();
        txtNetBios_name.Text = dr[5].ToString();
        txtApp.Text = dr[6].ToString();
        txtProcessor.Text = dr[7].ToString();
        txtHardDisk.Text = dr[8].ToString();
        txtRAM.Text = dr[9].ToString();
        txtRAID.Text = dr[10].ToString();
        txtWarranty.Text = dr[11].ToString();
        
        con.Close();
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        Server_WSBL swsbl = new Server_WSBL(Convert.ToInt64(txtSr_no.Text), Convert.ToInt64(txtModel_no.Text), Convert.ToInt64(txtSerial_no.Text), Convert.ToInt64(txtAsset_no.Text), txtOS.Text, txtNetBios_name.Text, txtApp.Text, txtProcessor.Text, txtHardDisk.Text, txtRAM.Text, txtRAID.Text, txtWarranty.Text);
        swsbl.Update();
        Response.Redirect("InventAdmin.aspx");
    }
}