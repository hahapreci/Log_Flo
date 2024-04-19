<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewLog.aspx.cs" Inherits="Log_Flo.ViewLog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style>
     h2{
         color:saddlebrown;
         font-family:'Goudy Old Style'
     }
     .gridView{
         background-color:bisque;
     }
   
 </style>
    <asp:SqlDataSource ID="sqlFloCycle" runat="server" ConnectionString="<%$ ConnectionStrings:floConnDB %>" 
    SelectCommand="SELECT * FROM [Flo_Log]">
</asp:SqlDataSource>
     <!--GridView-->
    <asp:GridView ID="grdFloLog" runat="server" DataSourceID="sqlFloCycle" AutoGenerateColumns="False" DataKeyNames="Id" CssClass="gridView">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="ID"   />
        <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:dd/MM/yyy}"  />
        <asp:BoundField DataField="Description" HeaderText="Description"   />
    </Columns>
</asp:GridView>

</asp:Content>
