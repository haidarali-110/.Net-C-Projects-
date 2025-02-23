<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowRecords.aspx.cs" Inherits="library_management1.ShowRecords" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <style>

body {
    font-family: 'Poppins', sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
}


.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #2c3e50;
    padding: 15px 30px;
    color: white;
}

.logo {
    font-size: 24px;
    font-weight: bold;
}

.nav-links {
    list-style: none;
    display: flex;
    gap: 20px;
}

.nav-links li {
    display: inline;
}

.nav-links a {
    text-decoration: none;
    color: white;
    font-size: 18px;
    transition: color 0.3s;
}

.nav-links a:hover {
    color: #f1c40f;
}


.search-box {
    width: 300px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    margin: 20px;
}

.search-btn {
    padding: 10px 15px;
    background-color: #27ae60;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.search-btn:hover {
    background-color: #219150;
}

/* GridView Tables */
.grid-container {
    width: 90%;
    margin: auto;
}

h2 {
    text-align: center;
    color: #2c3e50;
    margin-top: 20px;
}


.grid-container table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

.grid-container th {
    background-color: #1C5E55;
    color: white;
    padding: 10px;
    text-align: left;
}

.grid-container td {
    background-color: #E3EAEB;
    color: #333;
    padding: 10px;
    border-bottom: 1px solid #ccc;
}

.grid-container tr:nth-child(even) {
    background-color: #f9f9f9;
}


.delete-btn {
    background-color: #e74c3c;
    color: white;
    border: none;
    padding: 8px 12px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.delete-btn:hover {
    background-color: #c0392b;
}


@media (max-width: 768px) {
    .grid-container {
        width: 100%;
        overflow-x: auto;
    }

    .search-box {
        width: 100%;
    }
}
#btnBack {
    background-color: #4A90E2; /* Blue color */
    color: white; /* White text */
    border: none; 
    padding: 10px 20px; 
    font-size: 16px;
    border-radius: 5px; /* Rounded corners */
    cursor: pointer; 
    transition: background 0.3s ease;
}

#btnBack:hover {
    background-color: #357ABD; /* Darker blue on hover */
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <nav class="navbar">
        <div class="logo">📚 The Learning Vault Library</div>
        <ul class="nav-links">
            <li><a href="Home.aspx">Home</a></li>
             <li><a href="Admin.aspx">Admin</a></li>
            <li><a href="Usercard.aspx">User ID</a></li>
        </ul>
    </nav>
    </div>
    <center>
    <div>
     
    <asp:TextBox ID="txtSearchID" runat="server" CssClass="search-box" placeholder="Enter ID to search"></asp:TextBox>
<asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="search-btn" OnClick="btnSearch_Click" />
    <h2>User Data</h2>
        <asp:GridView ID="usergv" runat="server" AllowPaging="True" AllowSorting="True" 
            AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" 
            ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="FullName" HeaderText="FullName" 
                    SortExpression="FullName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                    SortExpression="Gender" />
                <asp:BoundField DataField="ValidUpTo" HeaderText="ValidUpTo" 
                    SortExpression="ValidUpTo" />
                     <asp:TemplateField HeaderText="Actions">
            <ItemTemplate>
                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="delete-btn"
                    CommandArgument='<%# Eval("ID") %>' OnClick="btnDelete_Click" />
            </ItemTemplate>
        </asp:TemplateField>
            </Columns>
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
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [ID], [FullName], [Email], [Phone], [Address], [DOB], [Gender], [ValidUpTo] FROM [Register1]">
        </asp:SqlDataSource>

    </div>
    
    </center>
    <center>
    <div>
    <h2>Issue Book</h2>
     <asp:GridView ID="IssueBook" runat="server" AllowPaging="True" AllowSorting="True" 
            AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
            DataSourceID="SqlDataSource2" >
         <Columns>
             <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
             <asp:BoundField DataField="Book_id" HeaderText="Book_id" 
                 SortExpression="Book_id" />
             <asp:BoundField DataField="Issue_date" HeaderText="Issue_date" 
                 SortExpression="Issue_date" />
             <asp:BoundField DataField="Author" HeaderText="Author" 
                 SortExpression="Author" />
             <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" 
                 SortExpression="Book_Name" />
         </Columns>
         <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
         <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
         <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
         <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
         <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#FFF1D4" />
         <SortedAscendingHeaderStyle BackColor="#B95C30" />
         <SortedDescendingCellStyle BackColor="#F1E5CE" />
         <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Name], [Book_id], [Issue_date], [Author], [Book_Name] FROM [IssueBook]">
        </asp:SqlDataSource>
    </div>
    </center>
    <center>
    <div>
    <h2>Return Book</h2>
          <asp:GridView ID="ReturnBook" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource3" GridLines="Horizontal" >
              <AlternatingRowStyle BackColor="#F7F7F7" />
              <Columns>
                  <asp:BoundField DataField="BookId" HeaderText="BookId" 
                      SortExpression="BookId" />
                  <asp:BoundField DataField="UserId" HeaderText="UserId" 
                      SortExpression="UserId" />
                  <asp:BoundField DataField="ReturnDate" HeaderText="ReturnDate" 
                      SortExpression="ReturnDate" />
              </Columns>
              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
              <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
              <SortedAscendingCellStyle BackColor="#F4F4FD" />
              <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
              <SortedDescendingCellStyle BackColor="#D8D8F0" />
              <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [BookId], [UserId], [ReturnDate] FROM [ReturnBook]">
        </asp:SqlDataSource>
        <asp:Button ID="btnBack" runat="server" Text="Back" onclick="btnBack_Click" />
    </div>
    </center>
    </form>
</body>
</html>
