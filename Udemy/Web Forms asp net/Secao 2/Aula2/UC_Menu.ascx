<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_Menu.ascx.cs" Inherits="wc_Menu" %>
<asp:Menu ID="Menu1" runat="server" DataSourceID="Web">
</asp:Menu>
<asp:Menu ID="Menu2" runat="server" DataSourceID="Web" Orientation="Horizontal">
</asp:Menu>
<asp:Menu ID="Menu3" runat="server" DataSourceID="Web" Orientation="Horizontal" StaticDisplayLevels="2">
</asp:Menu>
<asp:SiteMapDataSource ID="Web" runat="server" />


