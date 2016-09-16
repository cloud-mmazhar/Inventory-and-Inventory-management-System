using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ComputerBL cbl = new ComputerBL();
        txtSr_no.Text = Convert.ToString(cbl.Max());
    }
    protected void Submit_Click(object sender, EventArgs e)
    {        
        ComputerBL cbl = new ComputerBL(Convert.ToInt64(txtSr_no.Text),txtUserName.Text, Convert.ToInt64(txtCPU_sr_no.Text), txtPCModel.Text, txtRAM.Text, Convert.ToDateTime(txtMonitorMake.Text), txtHardDisk.Text, Convert.ToInt64(txtAsset_no.Text), txtDVD_ROM.Text, txtWarranty.Text, Convert.ToInt16(txtFloor.Text), Convert.ToInt16(txtX_Cord.Text), Convert.ToInt16(txtY_Cord.Text));
        cbl.Insert();
        Response.Redirect("InventAdmin.aspx");
    }
}