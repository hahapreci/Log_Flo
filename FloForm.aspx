<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FloForm.aspx.cs" Inherits="Log_Flo.FloForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!--SQL Data Sources-->
    <asp:SqlDataSource ID="sqlFloCycle" runat="server" ConnectionString="<%$ ConnectionStrings:floConnDB %>" 
        InsertCommand="INSERT INTO Flo_Log (Date, Description) VALUES (@Date, @Description)">
       <InsertParameters>
           <asp:Parameter Name="Description"/>
           <asp:Parameter Name="Date"/>          
       </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlFloLog" runat="server" ConnectionString="<%$ ConnectionStrings:floConnDB %>"
    SelectCommand="SELECT * FROM [Description]">      
    </asp:SqlDataSource>
    <!--End SQL Data Sources-->
    <!--Insert New Update-->
    <h2>Add An Update</h2>
    <asp:Panel ID="plNewCycle" runat="server">
        <div class="form-group">
            <!--Bring up a calendar to select a date-->
           <label>Select The Date </label>

            <asp:Calendar ID="calCycle" runat="server"  OnSelectionChanged="calCycle_SelectionChanged" >
           <OtherMonthDayStyle ForeColor="LightGray"></OtherMonthDayStyle>
           <TitleStyle BackColor="#cc99ff" ForeColor="White"></TitleStyle>
           <DayStyle BackColor="#cccccc"></DayStyle>
           <SelectedDayStyle BackColor="LightGray" Font-Bold="True"></SelectedDayStyle>  
           </asp:Calendar>

             <asp:TextBox ID="txtDateFormat" runat="server"  Visible="false"></asp:TextBox>
             </div>
            <div class="form-group">
           <label>Description </label><br />
             <asp:DropDownList ID="ddlDesc" runat="server" DataSourceID="sqlFloLog"
            DataTextField="Category" DataValueField="Category" AutoPostBack="true"></asp:DropDownList>
    </div>
        <asp:Button ID="btnAddCycle" runat="server" Text="Add Cycle" OnClick="btnAddCycle_Click" CssClass="btn btn-primary" />
    </asp:Panel>
</asp:Content>
