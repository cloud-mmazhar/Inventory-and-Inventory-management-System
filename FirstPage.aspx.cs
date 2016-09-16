using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Text;
using System.Data.SqlClient;

public partial class FirstPage : System.Web.UI.Page
{
    protected void Page_Init(object Sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        lblError.Visible = false;
        drpdwnInvoiceCat.Visible = false;
        drpdwnInventCat.Visible = false;
    }
    protected void imgbtnLogin_Click(object sender, ImageClickEventArgs e)
    {
        //if (txtImgCode.Text.Equals(Session["randomstr"].ToString()))
        //{
        //    if (rbtnInvent.Checked)
        //    {
        //        InventLogin il = new InventLogin(Convert.ToInt16(txtID.Text), txtPswd.Text, drpdwnInventCat.SelectedItem.ToString());
        //        //il.InventLogin1();

        //        try
        //        {
        //            if (il.InventLogin1() > 0)
        //            {
        //                string cat = drpdwnInventCat.SelectedItem.ToString();

        //                switch (cat)

        //                  //  switch(InventCatdrpdwn.SelectedIndex)
        //                {


        //                    case "Admin":
        //                        Session["uid"] = txtID.Text;
        //                        Response.Redirect("InventAdmin.aspx");
        //                        break;

        //                    case "HOD":
        //                        Session["uid"] = txtID.Text;
        //                        Response.Redirect("InventHOD.aspx");
        //                        break;

        //                    case "Employee":
        //                        Session["uid"] = txtID.Text;
        //                        Response.Redirect("InventEmp.aspx");
        //                        break;
        //                }
        //            }

        //            else
        //            {
        //                lblError.Text = "Invalid ID or Password..";
        //                lblError.Visible = true;
        //                txtImgCode.Text = "";
        //                if (rbtnInvent.Checked)
        //                    rbtnInvent.Checked = false;
                        
                        
        //                //Response.Redirect("ErrorPage.aspx");
        //            }
        //        }
        //        catch (SqlException se)
        //        {
        //            lblError.Text = se.Message;
        //            lblError.Visible = true;
        //        }
        //    }

        //    else if (rbtnInvoice.Checked)
        //    {
        //        InvoiceLogin il = new InvoiceLogin(Convert.ToInt64(txtID.Text), txtPswd.Text, drpdwnInvoiceCat.SelectedItem.ToString());

        //        try
        //        {
        //            if (il.InvoiceLogin1() > 0)
        //            {
        //                string cat = drpdwnInvoiceCat.SelectedItem.ToString();

        //                switch (cat)

        //                  //  switch(InvoiceCatdrpdwn.SelectedIndex)
        //                {


        //                    case "Admin":
        //                        Session["uid"] = txtID.Text;
        //                        Response.Redirect("InvoiceAdmin.aspx");
        //                        break;

        //                    case "Representative":
        //                        Session["uid"] = txtID.Text;
        //                        Response.Redirect("RepProcess.aspx");
        //                        break;

        //                    case "QA":
        //                        Session["uid"] = txtID.Text;
        //                        Response.Redirect("QAReceive.aspx");
        //                        break;

        //                    case "Project":
        //                        Session["uid"] = txtID.Text;
        //                        Response.Redirect("ProjectReceive.aspx");
        //                        break;

        //                    case "SCM":
        //                        Session["uid"] = txtID.Text;
        //                        Response.Redirect("PCReceive.aspx");
        //                        break;

        //                    case "F&A":
        //                        Session["uid"] = txtID.Text;
        //                        Response.Redirect("FnAReceive.aspx");
        //                        break;
        //                }
        //            }

        //            else
        //            {
        //                lblError.Text = "Invalid ID or Password..";
        //                lblError.Visible = true;
        //                txtImgCode.Text = "";
        //                if (rbtnInvoice.Checked)
        //                    rbtnInvoice.Checked = false;
        //                //Response.Redirect("ErrorPage.aspx");
        //            }
        //        }
        //        catch (SqlException se)
        //        {
        //            lblError.Text = se.Message;
        //            lblError.Visible = true;
        //        }
        //    }
        //}
        //else
        //{
        //    txtImgCode.Text = "";
        //    lblError.Text = "Invalid Code";
        //    lblError.Visible = true;
        //}
    }

    protected void rbtnInvoice_CheckedChanged(object sender, EventArgs e)
    {
        if (rbtnInvoice.Checked == true)
        {
            drpdwnInvoiceCat.Visible = true;
            drpdwnInventCat.Visible = false;
        }
        else
        {
            drpdwnInventCat.Visible = true;
            drpdwnInvoiceCat.Visible = false;
        }
    }
    protected void rbtnInvent_CheckedChanged(object sender, EventArgs e)
    {
        if (rbtnInvent.Checked == true)
        {
            drpdwnInvoiceCat.Visible = false;
            drpdwnInventCat.Visible = true;
        }
        else
        {
            drpdwnInventCat.Visible = false;
            drpdwnInvoiceCat.Visible = true;
        }
    }

    //protected void SlideShowTimer_Tick(object sender, EventArgs e)
    //{
    //    DateTime later = DateTime.Now.AddSeconds(.5);
    //    while (DateTime.Now < later)
    //    {
    //    }
    //    this.SlideShowImage1.Src = RandomImageName();


    //}

    private string RandomImageName()
    {
        Random rand = new Random();
        int RandomInt = rand.Next(0, 2);
        switch (RandomInt)
        {
            case 0:
                return "~/l&t/inaugration.jpg";
            // break;
            case 1:
                return "~/l&t/download (1).jpg";
            //break;
            case 2:
                return "~/l&t/download.jpg";
            //break;
            case 3:
                return "~/l&t/images (1).jpg";
            //break;
            case 4:
                return "~/l&t/images (2).jpg";
            //break;
            case 5:
                return "~/l&t/download (2).jpg";
            //break;

        }

        return "~/l&t/images (2).jpg";
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtImgCode.Text.Equals(Session["randomstr"].ToString()))
        {
            if (rbtnInvent.Checked)
            {
                InventLogin il = new InventLogin(Convert.ToInt16(txtID.Text), txtPswd.Text, drpdwnInventCat.SelectedItem.ToString());
                //il.InventLogin1();

                try
                {
                    if (il.InventLogin1() > 0)
                    {
                        string cat = drpdwnInventCat.SelectedItem.ToString();

                        switch (cat)

                          //  switch(InventCatdrpdwn.SelectedIndex)
                        {


                            case "Admin":
                                Session["uid"] = txtID.Text;
                                Response.Redirect("InventAdmin.aspx");
                                break;

                            case "HOD":
                                Session["uid"] = txtID.Text;
                                Response.Redirect("InventHOD.aspx");
                                break;

                            case "Employee":
                                Session["uid"] = txtID.Text;
                                Response.Redirect("InventEmp.aspx");
                                break;
                        }
                    }

                    else
                    {
                        lblError.Text = "Invalid ID or Password..";
                        lblError.Visible = true;
                        txtImgCode.Text = "";
                        if (rbtnInvent.Checked)
                            rbtnInvent.Checked = false;


                        //Response.Redirect("ErrorPage.aspx");
                    }
                }
                catch (SqlException se)
                {
                    lblError.Text = se.Message;
                    lblError.Visible = true;
                }
            }

            else if (rbtnInvoice.Checked)
            {
                InvoiceLogin il = new InvoiceLogin(Convert.ToInt64(txtID.Text), txtPswd.Text, drpdwnInvoiceCat.SelectedItem.ToString());

                try
                {
                    if (il.InvoiceLogin1() > 0)
                    {
                        string cat = drpdwnInvoiceCat.SelectedItem.ToString();

                        switch (cat)

                          //  switch(InvoiceCatdrpdwn.SelectedIndex)
                        {


                            case "Admin":
                                Session["uid"] = txtID.Text;
                                Response.Redirect("InvoiceAdmin.aspx");
                                break;

                            case "Representative":
                                Session["uid"] = txtID.Text;
                                Response.Redirect("RepProcess.aspx");
                                break;

                            case "QA":
                                Session["uid"] = txtID.Text;
                                Response.Redirect("QAReceive.aspx");
                                break;

                            case "Project":
                                Session["uid"] = txtID.Text;
                                Response.Redirect("ProjectReceive.aspx");
                                break;

                            case "SCM":
                                Session["uid"] = txtID.Text;
                                Response.Redirect("PCReceive.aspx");
                                break;

                            case "F&A":
                                Session["uid"] = txtID.Text;
                                Response.Redirect("FnAReceive.aspx");
                                break;
                        }
                    }

                    else
                    {
                        lblError.Text = "Invalid ID or Password..";
                        lblError.Visible = true;
                        txtImgCode.Text = "";
                        if (rbtnInvoice.Checked)
                            rbtnInvoice.Checked = false;
                        //Response.Redirect("ErrorPage.aspx");
                    }
                }
                catch (SqlException se)
                {
                    lblError.Text = se.Message;
                    lblError.Visible = true;
                }
            }
        }
        else
        {
            txtImgCode.Text = "";
            lblError.Text = "Invalid Code";
            lblError.Visible = true;
        }
    }
}