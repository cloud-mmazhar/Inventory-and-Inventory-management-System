using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LaptopInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LaptopBL lbl = new LaptopBL();
        txtSr_no.Text = Convert.ToString(lbl.Max());
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        LaptopBL lbl = new LaptopBL(Convert.ToInt64(txtSr_no.Text),txtUserName.Text,txtDept.Text,Convert.ToInt64(txtSerial_no.Text),Convert.ToDateTime(txtMake_Date.Text),txtProcessor.Text,txtRAM.Text,txtHardDisk.Text,txtCD_Drive.Text,Convert.ToInt64(txtAsset_no.Text),txtInstallation.Text,txtWarranty.Text,txtName.Text,txtPart.Text,Convert.ToInt64(txtPart_no.Text),txtWLAN_MAC.Text,Convert.ToInt16(txtFloor.Text),Convert.ToInt16(txtX_Cord.Text),Convert.ToInt16(txtY_Cord.Text));
        lbl.Insert();
        Response.Redirect("InventAdmin.aspx");
    }
}