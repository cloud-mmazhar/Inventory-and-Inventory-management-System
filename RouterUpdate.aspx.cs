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

public partial class RouterUpdate : System.Web.UI.Page
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
        cmd1 = new SqlCommand("Select * from Router where Asset_no='" + DropDownList1.SelectedItem.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        dr.Read();

        txtSr_no.Text = dr[0].ToString();
        txtType.Text = dr[1].ToString();
        txtAsset_no.Text = dr[2].ToString();
        txtSerial_no.Text = dr[3].ToString();        
        txtFloor.Text = dr[4].ToString();
        txtX_Cord.Text = dr[5].ToString();
        txtY_Cord.Text = dr[6].ToString();

        con.Close();
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        RouterBL rbl = new RouterBL(Convert.ToInt64(txtSr_no.Text), txtType.Text, Convert.ToInt64(txtAsset_no.Text), Convert.ToInt64(txtSerial_no.Text), Convert.ToInt16(txtFloor.Text), Convert.ToInt16(txtX_Cord.Text), Convert.ToInt16(txtY_Cord.Text));
        rbl.Update();
        Response.Redirect("InventAdmin.aspx");
    }
}