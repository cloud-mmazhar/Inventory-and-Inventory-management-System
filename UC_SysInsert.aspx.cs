using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_SysInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UC_SysBL ucbl = new UC_SysBL();
        txtSr_no.Text = Convert.ToString(ucbl.Max());
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        UC_SysBL ucbl = new UC_SysBL(Convert.ToInt64(txtSr_no.Text),txtSys_name.Text,txtSys_comp.Text,Convert.ToInt64(txtSerial_no.Text),Convert.ToInt64(txtAsset_no.Text));
        ucbl.Insert();
        Response.Redirect("InventAdmin.aspx");
    }
}