using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmpInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {        
        EmployeeBL eib = new EmployeeBL(txtLogID.Text, txtPswd.Text, Convert.ToInt64(txtPS_No.Text), txtE_Name.Text, txtE_ID.Text, Convert.ToDateTime(txtB_Date.Text), Convert.ToInt64(txtC_No.Text), Convert.ToDateTime(txtJ_Date.Text), Convert.ToInt64(txtSalary.Text), txtDept.Text, Convert.ToInt16(txtFloor.Text), Convert.ToInt16(txtX_Cord.Text), Convert.ToInt16(txtY_Cord.Text));
        eib.EmpInsert1();
        Response.Redirect("InventAdmin.aspx");
    }
}