using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RouterInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RouterBL rbl = new RouterBL();
        txtSr_no.Text = Convert.ToString(rbl.Max());
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        RouterBL rbl = new RouterBL(Convert.ToInt64(txtSr_no.Text), txtType.Text, Convert.ToInt64(txtAsset_no.Text), Convert.ToInt64(txtSerial_no.Text), Convert.ToInt16(txtFloor.Text), Convert.ToInt16(txtX_Cord.Text), Convert.ToInt16(txtY_Cord.Text));
        rbl.Insert();
        Response.Redirect("InventAdmin.aspx");
    }
}