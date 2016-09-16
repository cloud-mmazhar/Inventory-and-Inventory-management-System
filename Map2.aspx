<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.master" AutoEventWireup="true" CodeFile="Map2.aspx.cs" Inherits="Map2" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    
    <center>
        <asp:ImageMap ID="ImageMap1" runat="server" AlternateText="Pankti" Width="880px" 
            DescriptionUrl="~/lnt/2nd FL.jpg" HotSpotMode="PostBack" ImageUrl="~/lnt/2nd FL.jpg" 
            onclick="ImageMap1_Click">
            <asp:CircleHotSpot AlternateText="Rushi" PostBackValue="Rushi" Radius="7" 
                X="157" Y="130" />
            <asp:CircleHotSpot AlternateText="Aadir" HotSpotMode="PostBack" 
                PostBackValue="Aadir" Radius="30" X="400" Y="400" />
        </asp:ImageMap>
        
    </center>
        <asp:Panel ID="Panel1" runat="server" Visible="False" Height="150px" style="left:500px; top:800px; z-index:1; position:absolute"  
            Width="255px" BorderStyle="Solid" BackColor="#DBDBDB" 
            BackImageUrl="~/icons/backgroundimage.jpg" >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%--<asp:ImageButton ID="imgbtnClose" runat="server" 
                ImageUrl="~/icons/close-icon-red-small.png" onclick="imgbtnClose_Click" />--%>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ScriptManager ID="ScriptManager2" runat="server">
            </asp:ScriptManager>
            <%--<asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>--%>
            <asp:Button ID="btnPersonalDetails" runat="server" onclick="btnPersonalDetails_Click" 
                Text="Personal Details" />
            <%--</ContentTemplate>
            </asp:UpdatePanel>--%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:Panel>
        
    </div>
</asp:Content>

