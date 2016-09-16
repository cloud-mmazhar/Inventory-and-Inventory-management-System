using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class InventHOD : System.Web.UI.Page
{
    //SqlConnection con;
    //static int id;
    //static int n;

    InventHODBL iab = new InventHODBL();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            queload();
            bindGrid();
            addcmttext.Focus();
        }

    }

    public void bindGrid()
    {
        try
        {
            GridView1.DataSource = iab.GridData();
            GridView1.DataBind();
            GridView1.HeaderRow.Visible = false;
            int row = GridView1.Rows.Count;
            for (int it = 0; it < row; it++)
                GridView1.Rows[it].Cells[0].Text = GridView1.Rows[it].Cells[0].Text + ":";
            GridView1.Visible = true;
        }
        catch (Exception e) { }
    }
    protected void cmntbtn_Click(object sender, EventArgs e)
    {
        string name = Session["uid"].ToString();
        int i = iab.insert_comment(name, addcmttext.Text);
        if (i > 0)
        {
            //string s = "select * from quest where name='" + name + "'";
            bindGrid();
            addcmttext.Text = "";
            addcmttext.Focus();
        }
    }
    public void queload()
    {
        Quelabel.Text = iab.queload();
    }
    protected void cnfrmbtn_Click(object sender, EventArgs e)
    {
        int i = iab.add_question(addque.Text);
        if (i > 0)
        {
            Quelabel.Visible = true;
            cmntbtn.Visible = true;
            addcmttext.Visible = true;

            addque.Visible = false;
            cnfrmbtn.Visible = false;
            cnclbtn.Visible = false;
            queload();
        }
        else
        {
            addque.Text = "";
            addque.Focus();
        }
    }
    protected void cnclbtn_Click(object sender, EventArgs e)
    {
        Quelabel.Visible = true;
        cmntbtn.Visible = true;
        addcmttext.Visible = true;

        addque.Visible = false;
        cnfrmbtn.Visible = false;
        cnclbtn.Visible = false;
    }
    protected void quebtn_Click(object sender, EventArgs e)
    {
        hide();
        show();
    }
    public void show()
    {
        addque.Visible = true;
        addque.Text = "";
        cnfrmbtn.Visible = true;
        cnclbtn.Visible = true;
    }
    public void hide()
    {
        Quelabel.Visible = false;
        GridView1.Visible = false;
        cmntbtn.Visible = false;
        addcmttext.Visible = false;
    }
    public void previous()
    {
        string s;
        if ((s = iab.previous()) != null)
        {
            Quelabel.Text = s;
            bindGrid();
        }
        else
        {
            prvsbtn.Visible = false;
        }
    }
    public void next()
    {
        string sque = iab.next();
        if (InventHODBL.nextflag == "lastque")
        {
            Quelabel.Text = sque;
            bindGrid();
            nxtbtn.Visible = false;
            addcmttext.Visible = true;
            prvsbtn.Visible = true;

        }
        if (InventHODBL.nextflag == "notlastque")
        {
            Label1.Text = sque;
            if (!prvsbtn.Visible)
                prvsbtn.Visible = true;
            bindGrid();
        }
        else
        {
            nxtbtn.Visible = false;
            addcmttext.Visible = true;
        }
    }
    protected void prvsbtn_Click(object sender, EventArgs e)
    {
        previous();
        addcmttext.Visible = false;
        nxtbtn.Visible = true;
    }
    protected void nxtbtn_Click(object sender, EventArgs e)
    {
        next();
    }
}