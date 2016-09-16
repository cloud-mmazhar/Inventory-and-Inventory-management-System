using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SwitchesInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SwitchesBL swbl = new SwitchesBL();
        txtSr_no.Text = Convert.ToString(swbl.Max());
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        SwitchesBL swbl = new SwitchesBL(Convert.ToInt64(txtSr_no.Text), txtMake_Model.Text, Convert.ToInt64(txtPart_no.Text), Convert.ToInt64(txtAsset_no.Text), Convert.ToInt64(txtSerial_no.Text), Convert.ToInt16(txtFloor.Text), Convert.ToInt16(txtX_Cord.Text), Convert.ToInt16(txtY_Cord.Text));
        swbl.Insert();
        Response.Redirect("InventAdmin.aspx");
    }
}