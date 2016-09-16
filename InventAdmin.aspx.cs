using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InventAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    public void logout()
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("FirstPage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmpInsert.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmpUpdate.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmpDelete.aspx");
    }
}