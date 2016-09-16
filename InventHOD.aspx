<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.master" AutoEventWireup="true" CodeFile="InventHOD.aspx.cs" Inherits="InventHOD" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page1">
<!-- content -->

	<div id="content">
		<div class="container">

			<div class="wrapper" align="center">
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
															<h2>&nbsp;New Employee Details</h2>
															<div>
                                                    <div class="field"><asp:label ID="Label1" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Employee Name:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp
                                                        <asp:TextBox ID="txtE_Name" runat="server"></asp:TextBox>
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                                            ErrorMessage="Please Enter valid X-Coordinate" 
                                                            ControlToValidate="txtFloor" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                                </div>
                                                    </div><br /><br /><br />
                                                    <div class="field" id="txtLoginID">
                                                    <div><asp:label ID="Label2" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Login ID:</asp:label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                       <asp:TextBox ID="txtLogID" runat="server"></asp:TextBox>
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                                            ErrorMessage="Please Enter valid X-Coordinate" 
                                                            ControlToValidate="txtX_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                    </div></div><br /><br /><br />
                                                    <div class="field">
                                                    <div><asp:label ID="Label3" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Email id:</asp:label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                       <asp:TextBox ID="txtE_ID" runat="server" ></asp:TextBox>
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                            ErrorMessage="Please Enter valid Y-Coordinate" 
                                                            ControlToValidate="txtY_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                    </div></div><br /><br /><br />
                                                    <div class="field">
                                                    <div><asp:label ID="Label4" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Password:</asp:label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                        <asp:TextBox ID="txtPswd" runat="server"></asp:TextBox>
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                            ErrorMessage="Please Enter valid Y-Coordinate" 
                                                            ControlToValidate="txtY_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                    </div></div><br /><br /><br />
                                                    <div class="field">
                                                    <div><asp:label ID="Label5" runat="server" Font-Bold="True" ForeColor="#2CB6E9">PS_No:</asp:label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                        <asp:TextBox ID="txtPS_No" runat="server"></asp:TextBox>
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                            ErrorMessage="Please Enter valid Y-Coordinate" 
                                                            ControlToValidate="txtY_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                    </div></div><br /><br /><br />
                                                    <div class="field">
                                                    <div><asp:label ID="Label6" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Birth-date:</asp:label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                        <asp:TextBox ID="txtB_Date" runat="server"></asp:TextBox>
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                            ErrorMessage="Please Enter valid Y-Coordinate" 
                                                            ControlToValidate="txtY_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                    </div></div><br /><br /><br />
                                                    <div class="field">
                                                    <div><asp:label ID="Label7" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Joining date:</asp:label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                        <asp:TextBox ID="txtJ_Date" runat="server"></asp:TextBox>
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                            ErrorMessage="Please Enter valid Y-Coordinate" 
                                                            ControlToValidate="txtY_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                    </div></div><br /><br /><br />
                                                    <div class="field">
                                                    <div><asp:label ID="Label8" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Contact No:</asp:label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                       <asp:TextBox ID="txtC_No" runat="server"></asp:TextBox>
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                            ErrorMessage="Please Enter valid Y-Coordinate" 
                                                            ControlToValidate="txtY_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                    </div></div>
                                                            <br />
                                                            <br /><br />
                                                     <div>
                                                    <div class="field"><asp:label ID="LabelSal" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Salary:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                            ErrorMessage="Please Enter valid Y-Coordinate" 
                                                            ControlToValidate="txtY_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                         </div>
                                                    </div><br /><br /><br />
                                                     <div>
                                                    <div class="field"><asp:label ID="LabelDept" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Department:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp
                                                        <asp:TextBox ID="txtDept" runat="server"></asp:TextBox>
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                            ErrorMessage="Please Enter valid Y-Coordinate" 
                                                            ControlToValidate="txtY_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                         </div>
                                                    </div><br /><br /><br />
                                                    <div class="field"><asp:label ID="LabelPostback" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Postback value of Hotspot:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:TextBox ID="txtPostback" runat="server"></asp:TextBox>
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                            ErrorMessage="Please Enter valid Y-Coordinate" 
                                                            ControlToValidate="txtY_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                    </div><br /><br /><br />
                                                    <div class="field"><asp:label ID="LabelFloor" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Floor:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:TextBox ID="txtFloor" runat="server"></asp:TextBox>
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                            ErrorMessage="Please Enter valid Y-Coordinate" 
                                                            ControlToValidate="txtY_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%><%--<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                            ErrorMessage="Please Enter valid Y-Coordinate" 
                                                            ControlToValidate="txtY_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                    </div><br /><br /><br />
                                                    <div class="field"><asp:label ID="LabelX" runat="server" Font-Bold="True" ForeColor="#2CB6E9">X-Cord:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:TextBox ID="txtX_Cord" runat="server"></asp:TextBox>
                                                     
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                            ErrorMessage="Please Enter valid Y-Coordinate" 
                                                            ControlToValidate="txtY_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                    </div><br /><br /><br />
                                                    <div class="field"><asp:label ID="LabelY" runat="server" Font-Bold="True" ForeColor="#2CB6E9">Y-Cord:</asp:label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:TextBox ID="txtY_Cord" runat="server"></asp:TextBox>
                                                    
                                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                            ErrorMessage="Please Enter valid Y-Coordinate" 
                                                            ControlToValidate="txtY_Cord" ValidationExpression="^[0-9]"></asp:RegularExpressionValidator>--%>
                                                    
                                                    </div><br /><br /><br />
                                                                                                        
                                                       <div class="button"><%--<asp:Button ID="Submit" runat="server" Text="Insert" 
                                                               onclick="Submit_Click"/>--%></div>
                                                      <br /><br />

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
															<h2>Update Knowledge<asp:ScriptManager ID="ScriptManager1" runat="server">
                                                                </asp:ScriptManager>
                                                            </h2>
															<ul class="list2">
																<li>
                                                                   
                                                                <asp:UpdatePanel ID="u1" runat="server">
                                                                <ContentTemplate>
                                                                    <table class="style1">
                                                                        <tr>
                                                                            <td colspan="3">
															<h2 align="center">Quest</h2>
															                </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="center" colspan="3">
                                                                                <asp:Label ID="Quelabel" runat="server" Text="Question"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="3">
                                                                                <asp:TextBox ID="addque" runat="server" Width="216px" Visible="False" 
                                                                                    ValidationGroup="grp1"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style2" colspan="3">
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                                                    ControlToValidate="addque" 
                                                                                    ErrorMessage="You have to add a question before confirm" ForeColor="Red" 
                                                                                    ValidationGroup="grp1"></asp:RequiredFieldValidator>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style2" colspan="3">
                                                                                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                                                                    GridLines="None">
                                                                                    <AlternatingRowStyle BackColor="White" />
                                                                                    <EditRowStyle BackColor="#2461BF" />
                                                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                                                    <RowStyle BackColor="#EFF3FB" />
                                                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                                                </asp:GridView>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style2" colspan="3">
                                                                                <asp:TextBox ID="addcmttext" runat="server" Height="27px" TextMode="MultiLine" 
                                                                                    Width="221px" ValidationGroup="grp" CausesValidation="True"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style2" colspan="3">
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                                                    ControlToValidate="addcmttext" ErrorMessage="enter something to comment" 
                                                                                    ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style2" colspan="3">
                                                                                &nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style3">
                                                                                <asp:Button ID="cmntbtn" runat="server" onclick="cmntbtn_Click" Text="Comment" 
                                                                                    Width="87px" ValidationGroup="grp" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:Button ID="cnfrmbtn" runat="server" onclick="cnfrmbtn_Click" 
                                                                                    Text="Confirm" Width="67px" Visible="False" ValidationGroup="grp1" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:Button ID="cnclbtn" runat="server" onclick="cnclbtn_Click" Text="Cancel" 
                                                                                    Width="64px" Visible="False" />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style2" colspan="3">
                                                                                <asp:Button ID="quebtn" runat="server" onclick="quebtn_Click" 
                                                                                    Text="Add new Question" Width="223px" />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style3">
                                                                                <asp:Button ID="prvsbtn" runat="server" onclick="prvsbtn_Click" Text="Previous" 
                                                                                    Width="93px" />
                                                                            </td>
                                                                            <td colspan="2">
                                                                                <asp:Button ID="nxtbtn" runat="server" onclick="nxtbtn_Click" Text="Next" 
                                                                                    Width="71px" Visible="False" />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                </li>
															</ul>
															
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
	</div>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
            width: 77px;
        }
    </style>
</asp:Content>


