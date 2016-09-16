<%@ Page Title="" Language="C#" MasterPageFile="~/Invoice.master" AutoEventWireup="true" CodeFile="PCReceive.aspx.cs" Inherits="PCReceive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="section">
				<!-- box begin -->
				<div class="box">
					<div class="border-top">
						<div class="border-right">
							<div class="border-bot">
								<div class="border-left">
									<div class="left-top-corner">
										<div class="right-top-corner">
											<div class="right-bot-corner">
												<div class="left-bot-corner">
													<div class="inner">
														<h2>Solutions We Provide</h2>
														We’ew not sure what exact solutions you guys may provide but hopefully you do (otherwise you want simply rename this page into something that you actually provide). Anyways, this is the right place to present what your company can do.<br />
														And don’t forget how important this page is - this is what you make your profit with and the page’s content should be easy to understand.
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
			<div class="wrapper">
				<div class="col-1 maxheight">
<!-- box1 begin -->
					<div class="box1 maxheight">
						<div class="border-top maxheight">
							<div class="border-right maxheight">
								<div class="border-bot maxheight">
									<div class="border-left maxheight">
										<div class="left-top-corner maxheight">
											<div class="right-top-corner maxheight">
												<div class="right-bot-corner maxheight">
													<div class="left-bot-corner maxheight">
														<div class="inner">
                                                        <br />
                                                        <br /><br />
                                                        <div class="field"><asp:label ID="Label1" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Invoice No:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp&nbsp;&nbsp;&nbsp;
                                                        <asp:TextBox ID="txtInvoice_No" runat="server"></asp:TextBox></div><br /><br />
                                                        <div class="field"><asp:label ID="Label2" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Invoice Date:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp
                                                        <asp:TextBox ID="txtInvoice_Date" runat="server"></asp:TextBox></div><br /><br />
															<div class="field"><asp:label ID="Label3" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Supplier Name:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtSplr_Name" runat="server"></asp:TextBox></div><br /><br />
                                                        <div class="field"><asp:label ID="Label4" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Project Name:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp
                                                        <asp:TextBox ID="txtProj_Name" runat="server"></asp:TextBox></div><br /><br />
                                                        <div class="field"><asp:label ID="Label5" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Category:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp
                                                        <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox></div><br /><br />
                                                        <div class="field"><asp:label ID="Label6" runat="server" Font-Bold="True" ForeColor="#2CB6E9">PO Number:</asp:label>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtPO_No" runat="server"></asp:TextBox></div><br /><br />
                                                        
                                                       
                                                            <%--<h2>Basic Solution</h2>
															<p>Describe the solution in a couple of words.</p>
															<p>Why don’t you start with the selling points and pricings for each particular offer. Like this:</p>
															<ul class="list3 color1">
																<li><span>Selling point 1</span></li>
																<li><span>Selling point 2</span></li>
																<li><span>Selling point 3</span></li>
																<li><span>Selling point 4</span></li>
																<li><span>Selling point 5</span></li>
																<li><span>Selling point 6</span></li>
																<li><span>Selling point 7</span></li>
															</ul>
															<p>And dont’t forget to mention that these goodies are available at</p>
															<p class="aligncenter"><img alt="" src="images/price1.jpg" /></p>
															<a href="#" class="button1"><em><b>Order now</b></em></a>--%>
														    <br />
                                                            <br />
                                                            <br />
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
<!-- box1 end -->
				</div>
				<div class="col-2 maxheight">
<!-- box2 begin -->
					<div class="box1 maxheight">
						<div class="border-top maxheight">
							<div class="border-right maxheight">
								<div class="border-bot maxheight">
									<div class="border-left maxheight">
										<div class="left-top-corner maxheight">
											<div class="right-top-corner maxheight">
												<div class="right-bot-corner maxheight">
													<div class="left-bot-corner maxheight">
														<div class="inner"><br /><br /><br />
                                                        <div class="field">
                                                            <asp:label ID="Label7" runat="server" Font-Bold="True" ForeColor="#2CB6E9">IRN:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp
                                                            <asp:TextBox ID="txt_IRN" runat="server"></asp:TextBox>
                                                            </div><br /><br />
                                                         <div class="field"><asp:label ID="Label8" runat="server" Font-Bold="True" ForeColor="#2CB6E9">IBR:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp
                                                        <asp:TextBox ID="txt_IBR" runat="server"></asp:TextBox></div><br /><br />
                                                        <div class="field"><asp:label ID="Label9" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Remark:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                        <asp:TextBox ID="txt_Remark" runat="server"></asp:TextBox></div><br /><br />
                                                         <div class="field"><asp:label ID="Label10" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Receive Date:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp&nbsp;&nbsp;&nbsp;
                                                        <asp:TextBox ID="txtReceive_Date" runat="server"></asp:TextBox></div><br /><br />
                                                         <div class="field"><asp:label ID="Label11" runat="server" Font-Bold="True" ForeColor="#2CB6E9">GRN/SES No:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp&nbsp;&nbsp;&nbsp;
                                                        <asp:TextBox ID="txtGRN" runat="server"></asp:TextBox></div><br /><br />
                                                         <div class="field"><asp:label ID="Label12" runat="server" Font-Bold="True" ForeColor="#2CB6E9">GRN/SES Remark:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:TextBox ID="txtGRN_Remark" runat="server"></asp:TextBox></div><br /><br />
                                                         <div class="field"><asp:label ID="Label13" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Receive Date:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp &nbsp;
                                                        <asp:TextBox ID="txtRcv_Date" runat="server"></asp:TextBox></div><br /><br />
                                                            <br />
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
				<div class="col-3 maxheight">
<!-- box3 begin -->
					<div class="box1 maxheight">
                        <div class="border-top maxheight">
                            <div class="border-right maxheight">
                                <div class="border-bot maxheight">
                                    <div class="border-left maxheight">
                                        <div class="left-top-corner maxheight">
                                            <div class="right-top-corner maxheight">
                                                <div class="right-bot-corner maxheight">
                                                    <div class="left-bot-corner maxheight">
                                                        <div class="inner">
                                                            <h2>
                                                                Select Project:</h2>
                                                            <p>
                                                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                                                    DataSourceID="SqlDataSource1" DataTextField="Project_Name" 
                                                                    DataValueField="Project_Name">
                                                                </asp:DropDownList>
                                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                                    SelectCommand="SELECT [Project Name] AS Project_Name FROM [ProjectData]">
                                                                </asp:SqlDataSource>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Button ID="btn_Go" runat="server" Text="GO" />
                                                            </p>
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <%--<p>Describe the solution in a couple of words.</p>
															<p>Why don’t you start with the selling points and pricings for each particular offer. Like this:</p>
															<ul class="list3 color3">
																<li><span>Selling point 1</span></li>
																<li><span>Selling point 2</span></li>
																<li><span>Selling point 3</span></li>
																<li><span>Selling point 4</span></li>
																<li><span>Selling point 5</span></li>
																<li><span>Selling point 6</span></li>
																<li><span>Selling point 7</span></li>
															</ul>
															<p>And dont’t forget to mention that these goodies are available at</p>
															<p class="aligncenter"><img alt="" src="images/price3.jpg" /></p>
															<a href="#" class="button3"><em><b>Order now</b></em></a>--%>
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
<!-- box3 end -->
				</div>
			</div>
		</div>
	</div>
<!-- footer -->
	<div id="footer">
		<div class="container">
			<ul class="nav">
				<li><a href="index.html">Homeclass="fright"><a rel="nofollow" href="http://www.templatemonster.com/flash-templates.php">Flash Templates</a> from TemplateMonster - Squeeze Your Competitors.</div>
			</div>
		</div>
	</div>

</asp:Content>

