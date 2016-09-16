<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InventAdmin.aspx.cs" Inherits="InventAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description" content="Home page - free business website template available at TemplateMonster.com for free download."/>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>
</head>
<body id="page1" onload="new ElementMaxHeight();">
    <form id="form1" runat="server">
<!-- header -->
	<div id="header">
		<div class="container">
			<div class="row-1">
				<div class="logo"><a href="InventAdmin.aspx"><img alt="" src="icons/inventory/Untitled1.png" /></a></div>
				<ul class="top-links">
					<li><a href="InventAdmin.aspx"><img alt="" src="images/top-icon1.jpg" /></a></li>
					<li><a href="InventAdmin.aspx"><img alt="" src="images/top-icon2.jpg" /></a></li>
                    <li><a href="InventAdmin.aspx"><img alt="" src="images/top-icon3.jpg" /></a></li>
                    <%--<li><a href="#"><img alt="" src="icons/inventory/map-icon-smallF.gif" /></a></li>
					<li><a href="contact-us.html"><img alt="" src="icons/inventory/images (2).jpg" /></a></li>--%>
				</ul>
			</div>
			<div class="row-2">
<!-- nav box begin -->
				<div class="nav-box">
					<div class="left">
						<div class="right">
							<%--<ul>
								<li><a href="InventAdmin.aspx" class="current"><em><b>HOME</b></em></a></li>
								<li><a href="Map.aspx"><em><b>GOTO MAP</b></em></a></li>
								<li><a href="solutions.html"><em><b>QUERY</b></em></a></li>
								<li><a href="partners.html"><em><b>REPORT</b></em></a></li>
								<li><a href="consulting.html"><em><b>CHANGE PASSWORD</b></em></a></li>
                                <li><a href="FirstPage.aspx" onclick()="logout" class="last"><em><b>LOGOUT</b></em></a></li>
							</ul>--%>
                            <center>
						    <asp:Menu ID="Menu1" runat="server" Height="47px" Width="950px" 
                                 Font-Size="Larger" Orientation="Horizontal">
                                <DynamicMenuItemStyle ForeColor="Black" VerticalPadding="7px" />
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/InventAdmin.aspx" Text="HOME" Value="HOME">
                                    </asp:MenuItem>
                                    <asp:MenuItem Text="GOTO MAP" Value="GOTO MAP">
                                        <asp:MenuItem NavigateUrl="~/Map1.aspx" Text="1st FLOOR" Value="1st FLOOR">
                                        </asp:MenuItem>
                                        <asp:MenuItem Text="2nd FLOOR" Value="2nd FLOOR" NavigateUrl="~/Map2.aspx"></asp:MenuItem>
                                    </asp:MenuItem>
                                    <asp:MenuItem Text="QUERY" Value="QUERY"></asp:MenuItem>
                                    <asp:MenuItem Text="REPORT" Value="REPORT"></asp:MenuItem>
                                    <asp:MenuItem Text="CHANGE PASSWORD" Value="CHANGE PASSWORD"></asp:MenuItem>
                                    <asp:MenuItem Text="LOGOUT" Value="LOGOUT" NavigateUrl="~/FirstPage.aspx"></asp:MenuItem>
                                </Items>
                                <StaticMenuItemStyle HorizontalPadding="20px" />
                                <StaticMenuStyle Height="47px" HorizontalPadding="160px" VerticalPadding="15px" 
                                    Width="950px" />
                            </asp:Menu></center>
						</div>
					</div>
				</div>
<!-- nav box end -->
			</div>
		</div>
	</div>
<!-- content -->
	<div id="content"><%--<div class="ic">Kick-ass Flash templates from TemplateMonster!</div>--%>
		<div class="container">
<!-- main-banner-big begin -->
			<div class="main-banner-big">
				<div class="inner">
					<h1>Even the biggest success Starts with a first step</h1>
					<a href="#" class="button">Learn More</a>
				</div>
			</div>
<!-- main-banner-big end -->
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
															<asp:Panel ID="pnlNews" runat="server" Height="274px" Width="245px" 
                style="margin-left: 0px">
            
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
															<h2>Edit Database</h2>
															<%--<ul class="list2">
																<li><img alt="" src="icons/inventory/plus.jpg" /><h5>
                                                                    <asp:Button ID="Button1" runat="server" Text="Insert" onclick="Button1_Click" />
                                                                    </h5></li>
																<li><img alt="" src="icons/inventory/1362064101_interact.png" /><h5>
                                                                    <asp:Button ID="Button2" runat="server" Text="Update" onclick="Button2_Click" />
                                                                    </h5></li>
																<li><img alt="" src="icons/inventory/Button-Delete-icon.png" /><h5>
                                                                    <asp:Button ID="Button3" runat="server" Text="Delete" onclick="Button3_Click" />
                                                                    </h5></li>
																<li><img alt="" src="images/image_66x66.gif" /><h5>John Doe</h5>President or something</li>
															</ul>--%>

														    <br />
                            <asp:Menu ID="Menu2" runat="server" Font-Size="Larger">
                            <DynamicMenuItemStyle VerticalPadding="5px" HorizontalPadding="10px" />
                                <DynamicMenuStyle VerticalPadding="8px" />
                                <Items>
                                    <asp:MenuItem Text="Insert Details" Value="Insert Details">
                                        <asp:MenuItem NavigateUrl="~/EmpInsert.aspx" Text="Employee" Value="Employee"></asp:MenuItem>                                        
                                        <asp:MenuItem Text="Resource" Value="Resources">
                                            <asp:MenuItem Text="Computer" Value="New Item" NavigateUrl="~/CompInsert.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Laptop" Value="Laptop" NavigateUrl="~/LaptopInsert.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Printer" Value="Printer" NavigateUrl="~/PrinterInsert.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Projector_TV" Value="Projector_TV" 
                                                NavigateUrl="~/Projector_TVInsert.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Router" Value="Router" NavigateUrl="~/RouterInsert.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Server_Workstation" Value="Server_Workstation" 
                                                NavigateUrl="~/Server_WSInsert.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Switches" Value="Switches" 
                                                NavigateUrl="~/SwitchesInsert.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="UC_System" Value="UC_System" 
                                                NavigateUrl="~/UC_SysInsert.aspx"></asp:MenuItem>
                                        </asp:MenuItem>
                                    </asp:MenuItem>                           
                                    <asp:MenuItem Text="Update Details" Value="Update Details">
                                        <asp:MenuItem Text="Employee" Value="Employee"></asp:MenuItem>
                                        <asp:MenuItem Text="Resource" Value="Resources">
                                            <asp:MenuItem Text="Computer" Value="Computer" NavigateUrl="~/CompUpdate.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Laptop" Value="Laptop" NavigateUrl="~/LaptopUpdate.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Printer" Value="Printer" NavigateUrl="~/PrinterUpdate.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Projector_TV" Value="Projector_TV" 
                                                NavigateUrl="~/Projector_TVUpdate.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Router" Value="Router" NavigateUrl="~/RouterUpdate.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Server_Workstation" Value="Server_Workstation" 
                                                NavigateUrl="~/Server_WSUpdate.aspx"></asp:MenuItem>                                            
                                            <asp:MenuItem Text="Switches" Value="Switches" 
                                                NavigateUrl="~/SwitchesUpdate.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="UC_System" Value="UC_System" 
                                                NavigateUrl="~/UC_SysUpdate.aspx"></asp:MenuItem>
                                        </asp:MenuItem>
                                    </asp:MenuItem>
                                    <asp:MenuItem Text="Delete Details" Value="Delete Details">
                                        <asp:MenuItem Text="Employee" Value="Employee"></asp:MenuItem>
                                        <asp:MenuItem Text="Resource" Value="Resources">
                                            <asp:MenuItem Text="Computer" Value="Computer" NavigateUrl="~/CompDelete.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Laptop" Value="Laptop" NavigateUrl="~/LaptopDelete.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Printer" Value="Printer" NavigateUrl="~/PrinterDelete.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Projector_TV" Value="Projector_TV" 
                                                NavigateUrl="~/Projector_TVDelete.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Router" Value="Router" NavigateUrl="~/RouterDelete.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Server_Workstation" Value="Server_Workstation" 
                                                NavigateUrl="~/Server_WSDelete.aspx"></asp:MenuItem>                                            
                                            <asp:MenuItem Text="Switches" Value="Switches" 
                                                NavigateUrl="~/SwitchesDelete.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="UC_System" Value="UC_System" 
                                                NavigateUrl="~/UC_SysDelete.aspx"></asp:MenuItem>
                                        </asp:MenuItem>
                                    </asp:MenuItem>
                                </Items>
                                <StaticMenuItemStyle ItemSpacing="50px" VerticalPadding="25px" />
                            </asp:Menu>
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
				<div class="col-3 maxheight">
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
															<h2>Update your Knowledge</h2>
															<ul class="list2">
																<li><img alt="" src="images/image_51x51.gif" /><h6><a href="#">Dooodle Inc.</a></h6></li>
																<li><img alt="" src="images/image_51x51.gif" /><h6><a href="#">Macrohard</a></h6></li>
																<li><img alt="" src="images/image_51x51.gif" /><h6><a href="#">A-bode</a></h6></li>
																<li><img alt="" src="images/image_51x51.gif" /><h6><a rel="nofollow" href="http://www.templatemonster.com" target="_blank">TemplateMonster.com</a> - Why not?</h6></li>
																<li><img alt="" src="images/image_51x51.gif" /><h6><a href="#">GoMommy</a></h6></li>
																<li><img alt="" src="images/image_51x51.gif" /><h6><a href="#">Lola-cola</a></h6></li>
															</ul>
															<a href="#" class="button"><em><b>View All Partners</b></em></a>
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
<!-- extra-content -->
	<div id="extra-content">
	  	<div class="container">
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
															<h2>About Us</h2>
															<img class="img-indent" alt="" src="images/image_87x66.gif" />
															A perfect place to tell a couple of words about your company - just a little bit of introduction, leave the rest for a proper page.
															<div class="clear"></div>
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
															<h2>Testimonial</h2>
															<img class="img-indent" alt="" src="images/image_87x66.gif" />
															<h5>Testimonial Name</h5>
															We know you love it - showing off how your customers love you and your company. Therefore there should be a place for it - which is here.
															<div class="clear"></div>
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
