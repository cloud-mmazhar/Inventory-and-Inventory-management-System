<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.master" AutoEventWireup="true" CodeFile="Map1.aspx.cs" Inherits="Map1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">
<div style=" height:800px; width:800px; text-align:center; margin:0 auto;">
    
    <center>
        <asp:ImageMap ID="ImageMap1" runat="server" AlternateText="Pankti" Width="880px" 
            DescriptionUrl="~/lnt/1st FL.jpg" HotSpotMode="PostBack" ImageUrl="~/lnt/1st FL.jpg" 
            onclick="ImageMap1_Click">
            <asp:CircleHotSpot AlternateText="Mansi" PostBackValue="Mansi" Radius="7" 
                X="147" Y="130" />
            <asp:CircleHotSpot AlternateText="Chetas" HotSpotMode="PostBack" 
                PostBackValue="Chetas" Radius="7" X="159" Y="174" />
            <asp:CircleHotSpot AlternateText="Pankti" HotSpotMode="PostBack" 
                PostBackValue="Pankti" Radius="7" X="157" Y="130" />
            <asp:CircleHotSpot Radius="7" X="157" Y="144" AlternateText="Meet" PostBackValue="Meet" 
                HotSpotMode="PostBack"></asp:CircleHotSpot>
            <asp:CircleHotSpot Radius="7" X="145" Y="144" AlternateText="Shreejal" PostBackValue="Shreejal" 
                HotSpotMode="PostBack"></asp:CircleHotSpot>
            <asp:CircleHotSpot Radius="7" X="145" Y="626" AlternateText="Arpan" PostBackValue="Arpan" 
                HotSpotMode="PostBack"></asp:CircleHotSpot>
            <asp:CircleHotSpot Radius="7" X="157" Y="626" AlternateText="Dixit" PostBackValue="Dixit" 
                HotSpotMode="PostBack"></asp:CircleHotSpot>
        </asp:ImageMap>
        
    </center>
        <asp:Panel ID="Panel1" runat="server" Visible="False" Height="150px" style="left:500px; top:850px; z-index:1; position:absolute"  
            Width="255px" BorderStyle="Solid" BackColor="#DBDBDB" BackImageUrl="~/icons/backgroundimage.jpg" >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="imgbtnClose" runat="server" 
                ImageUrl="~/icons/close-icon-red-small.png" onclick="imgbtnClose_Click" />
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ScriptManager ID="ScriptManager2" runat="server">
            </asp:ScriptManager>
            <%--<asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>--%>
            <center>
            <asp:Button ID="btnPersonalDetails" runat="server" onclick="btnPersonalDetails_Click" 
                Text="Personal Details" />
                <br />
            
            <asp:Button ID="btnHardware" runat="server" onclick="btnHardware_Click" 
                Text="Hardware Resources" />
            </center>
            <%--<asp:Button ID="btnYes" runat="server" Text="Button" />
            <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" 
                TargetControlID="btnPersonalDetails" DisplayModalPopupID="ModalPopupExtender1">
            </asp:ConfirmButtonExtender>
            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1" TargetControlID="btnPersonalDetails" OkControlID="btnYes">
            </asp:ModalPopupExtender>--%>
            <%--</ContentTemplate>
            </asp:UpdatePanel>--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:Panel>
        
    </div>
</asp:Content>

