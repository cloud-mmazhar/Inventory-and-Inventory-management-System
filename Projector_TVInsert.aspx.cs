using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Projector_TVInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Projector_TVBL ptbl = new Projector_TVBL();
        txtSr_no.Text = Convert.ToString(ptbl.Max());
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        Projector_TVBL ptbl = new Projector_TVBL(Convert.ToInt64(txtSr_no.Text),txtModel_no.Text,Convert.ToInt64(txtAsset_no.Text),Convert.ToInt64(txtSerial_no.Text),txtWarranty.Text,Convert.ToInt16(txtFloor.Text));
        ptbl.Insert();
        Response.Redirect("InventAdmin.aspx");
    }
}