<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FirstPage.aspx.cs" Inherits="FirstPage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Invoice-Inventory Management System</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description" content="Home page-Invoice-Inventory Management System"/>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>
</head>
<body id="page5" onload="new ElementMaxHeight();">
    <form id="form1" runat="server">
<!-- header -->
	<div id="header">
		<div class="container">
			<div class="row-1">
				<div class="logo"><a href="FirstPage.aspx"><img alt="" src="icons/images (15).jpg" /></a></div>
				<ul class="top-links">
					<li><a href="index.html"><img alt="" src="images/top-icon1.jpg" /></a></li>
					<li><a href="#"><img alt="" src="images/top-icon2.jpg" /></a></li>
					<li><a href="contact-us.html"><img alt="" src="images/top-icon3.jpg" /></a></li>
				</ul>
			</div>
            <%--<div class="row-2">
<!-- nav box begin -->
				<div class="nav-box">
					<div class="left">
						<div class="right">
							<ul>
								<li><a href="index.html" class="first"><em><b>HOME</b></em></a></li>
								<li><a href="about-us.html"><em><b>ABOUT US</b></em></a></li>
								<li><a href="solutions.html"><em><b>SOLUTIONS</b></em></a></li>
								<li><a href="partners.html"><em><b>PARTNERS</b></em></a></li>
								<li><a href="consulting.html"class="current"><em><b>CONSULTING</b></em></a></li>
								<li><a href="contact-us.html" class="last"><em><b>CONTACT US</b></em></a></li>
							</ul>
						</div>
					</div>
				</div>
<!-- nav box end -->
			</div>--%>
		</div>
	</div>
<!-- content -->
	<div id="content"><div class="ic">Kick-ass Flash templates from TemplateMonster!</div>
		<div class="container">
<!-- main-banner-small begin -->
			 <div class="main-banner-small">
                 <%--<div class="inner">
					<h1>Even the biggest success Starts with a first step</h1>
				</div>--%>
             <div>
                
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
       
                  
                </div>
			</div>
<!-- main-banner-small end -->
			<div class="wrapper">
				<div class="col-1 maxheight">
<!-- box begin -->
					<div class="box maxheight">
						<div class="border-top maxheight">
							<div class="border-right maxheight">
								<div class="border-bot maxheight">
									<div class="border-left maxheight">
										<div class="left-top-corner maxheight">
											<div class="right-top-corner maxheight">
												<div class="right-bot-corner maxheight">
													<div class="left-bot-corner maxheight">
														<div class="inner">
															<h2>News Updates</h2>
															<asp:Panel ID="pnlNews" runat="server" Height="274px" Width="245px" style="margin-left: 0px">
            
            <marquee direction="up" onmouseover="this.stop();" onmouseout="this.start();" scrollamount="1">

<ol style="padding-right:25px;color:#C20ACE;font-family:Arial;font-size:14px;">
  <li style="padding-bottom:15px;"> Its a moral responsibility of every citizen on this planet to think of paying back to Mother 'Nature'></li>
  <li style="padding-bottom:15px;"> Earth allows you to stand.Let it stand the way it is!></li>
  <li style="padding-bottom:15px;"> Lead Hastings to overall improvement and sustainability of our environment through education, economic practices and social responsibility.></li>
  <li style="padding-bottom:15px;"> The environment should be put in the category of our national security.Defense of our resources is just as important as defense abroad.></li>
  <li style="padding-bottom:15px;"> Understanding the laws of nature does not mean that we are immune to their operations.></li>
  
</ol>
</marquee></asp:Panel>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
<!-- box end -->
				</div>
				<div class="col-2 maxheight">
<!-- box begin -->
					<div class="box maxheight">
						<div class="border-top maxheight">
							<div class="border-right maxheight">
								<div class="border-bot maxheight">
									<div class="border-left maxheight">
										<div class="left-top-corner maxheight">
											<div class="right-top-corner maxheight">
												<div class="right-bot-corner maxheight">
													<div class="left-bot-corner maxheight">
														<div class="inner">
															<h2>Login Here</h2>
															<div id="contacts-form">
                                                            <div class="field">
                                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                <ContentTemplate>
                                                                    <asp:RadioButton ID="rbtnInvoice" runat="server" 
                                                                        Text="Invoice Tracking System" GroupName="cat" TextAlign="Left" 
                                                                        AutoPostBack="True" oncheckedchanged="rbtnInvoice_CheckedChanged" />
                                         <br /><br /><br /><br />   <asp:RadioButton ID="rbtnInvent" runat="server" 
                                                                        Text="Inventory Management System" GroupName="cat" TextAlign="Left" 
                                                                        AutoPostBack="True" oncheckedchanged="rbtnInvent_CheckedChanged" />
                                                                    
                                                                    <div class="field">
                                              
                                           <br />               <div class="field"><asp:Label ID="lblID" runat="server" Font-Bold="True" 
                                                                    ForeColor="#2CB6E9">ID:</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                                                ControlToValidate="txtID" ErrorMessage="Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                                                ControlToValidate="txtID" ErrorMessage="Enter numeric value" ForeColor="Red" 
                                                                                ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                                                                </div>
                                           <br />  <br />   <div class="field"><asp:Label ID="lblPswd" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Password:</asp:Label>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtPswd" runat="server" TextMode="Password"></asp:TextBox></div>
                                           <br /><br />             <asp:DropDownList ID="drpdwnInvoiceCat" runat="server" Visible="False">
                                                                        <asp:ListItem>Representative</asp:ListItem>
                                                                        <asp:ListItem>QA</asp:ListItem>
                                                                        <asp:ListItem>Project</asp:ListItem>
                                                                        <asp:ListItem>Payment Cell</asp:ListItem>
                                                                        <asp:ListItem>FnA</asp:ListItem>
                                                                            <asp:ListItem>Admin</asp:ListItem>
                                                                    </asp:DropDownList> <br />
                                                                        <asp:DropDownList ID="drpdwnInventCat" runat="server" Visible="False">
                                                                            <asp:ListItem>Employee</asp:ListItem>
                                                                            <asp:ListItem>HOD</asp:ListItem>
                                                                            <asp:ListItem>Admin</asp:ListItem>
                                                                        </asp:DropDownList>
                                                             </div>
                                           <br /><br />         <div class="field"><asp:TextBox ID="txtImgCode" runat="server"></asp:TextBox></div>
                                        <br />               <div><img id="imgCaptha" runat="server" src="Captcha.aspx" alt="" /></div>
                                                             <div class="field"><asp:Label ID="lblError" runat="server" ForeColor="Red" 
                                                                     Visible="False"></asp:Label></div>
                                                             <center><%--<asp:ImageButton ID="imgbtnLogin" runat="server" 
                                                                     ImageUrl="icons/loginbtn.gif" onclick="imgbtnLogin_Click" 
                                                                     oninit="Page_Init" />--%>

                                                                 <asp:Button ID="btnLogin" runat="server" BackColor="#0099FF" 
                                                                     BorderStyle="Outset" Font-Bold="True" ForeColor="White" Height="35px" 
                                                                     onclick="btnLogin_Click" Text="Login" Width="80px" oninit="Page_Init" />

                                                             </center>
                                                                     <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
                                                                    </asp:ScriptManager>--%>
                                                                        </ContentTemplate>
                                                                        </asp:UpdatePanel>
                                                                </div>
                                                            </div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
<!-- box end -->
				</div>
			</div>
		</div>
	</div>

<!-- footer -->
	<div id="footer">
		<div class="container">
			<ul class="nav">
				<li><a href="index.html">Home</a>|</li>
				<li><a href="about-us.html">About Us</a>|</li>
				<li><a href="solutions.html">Solutions</a>|</li>
				<li><a href="partners.html">Partners</a>|</li>
				<li><a href="consulting.html">Consulting</a>|</li>
				<li><a href="contact-us.html">Contact Us</a></li>
			</ul>
			<div class="wrapper">
				<div class="fleft">Copyright &copy; 2009</div>
				<div class="fright"><a rel="nofollow" href="http://www.templatemonster.com/flash-templates.php">Flash Templates</a> from TemplateMonster - Squeeze Your Competitors.</div>
			</div>
		</div>
	</div>
    </form>
</body>
</html>
