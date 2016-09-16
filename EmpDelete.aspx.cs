using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class EmpDelete : System.Web.UI.Page
{
    SqlConnection InsCon;
    SqlCommand cmd2;

    protected void Page_Load(object sender, EventArgs e)
    {
        InsCon = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ToString());

        if (!IsPostBack)
        {
            DropDownList1.DataTextField = "LoginID";
            
            DropDownList1.DataValueField = "LoginID";
            
            DropDownList1.DataBind();

            DropDownList1.Items.Insert(0, "--SELECT--");
            
        }

    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //  string sId = DropDownList1.SelectedValue.ToString();
        
        string sName = DropDownList1.SelectedItem.ToString();
        txtLogID.Text = sName;

        InsCon.Open();
        cmd2 = new SqlCommand("Select * from EmployeeData where LoginID='"+DropDownList1.SelectedItem.Text+"'",InsCon);
        //  cmd1.Parameters.Add(new SqlParameter("@Log_ID", SqlDbType.VarChar, 50));
        SqlDataReader dr = cmd2.ExecuteReader();
        dr.Read();
        txtLogID.Text = dr[0].ToString();
        txtPswd.Text = dr[1].ToString();
        //cmd1.Parameters.ToString();
        txtPS_No.Text = dr[2].ToString();
        txtE_Name.Text = dr[3].ToString();
        txtE_ID.Text = dr[4].ToString();
        txtB_Date.Text = dr[5].ToString();
        txtJ_Date.Text = dr[6].ToString();
        txtC_No.Text = dr[7].ToString();
        txtSalary.Text = dr[8].ToString();
        txtDept.Text = dr[9].ToString();        
        txtFloor.Text = dr[10].ToString();
        txtX_Cord.Text = dr[11].ToString();
        txtY_Cord.Text = dr[12].ToString();
        InsCon.Close();

    }
       
    protected void Submit_Click(object sender, EventArgs e)
    {        
        EmployeeBL eldel = new EmployeeBL(txtLogID.Text, txtPswd.Text, Convert.ToInt64(txtPS_No.Text), txtE_Name.Text, txtE_ID.Text, Convert.ToDateTime(txtB_Date.Text), Convert.ToInt64(txtC_No.Text), Convert.ToDateTime(txtJ_Date.Text), Convert.ToInt64(txtSalary.Text), txtDept.Text, Convert.ToInt16(txtFloor.Text), Convert.ToInt16(txtX_Cord.Text), Convert.ToInt16(txtY_Cord.Text));
        eldel.EmpDelete();
        Response.Redirect("InventAdmin.aspx");
        
    }
}