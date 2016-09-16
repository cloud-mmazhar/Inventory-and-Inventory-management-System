using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Server_WSInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server_WSBL swsbl = new Server_WSBL();
        txtSr_no.Text = Convert.ToString(swsbl.Max());
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        Server_WSBL swsbl = new Server_WSBL(Convert.ToInt64(txtSr_no.Text),Convert.ToInt64(txtModel_no.Text),Convert.ToInt64(txtSerial_no.Text),Convert.ToInt64(txtAsset_no.Text),txtOS.Text,txtNetBios_name.Text,txtApp.Text,txtProcessor.Text,txtHardDisk.Text,txtRAM.Text,txtRAID.Text,txtWarranty.Text);
        swsbl.Insert();
        Response.Redirect("InventAdmin.aspx");
    }
}