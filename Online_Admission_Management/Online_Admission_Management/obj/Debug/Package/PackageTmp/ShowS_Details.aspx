<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowS_Details.aspx.cs" Inherits="Online_Admission_Management.ShowS_Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <style>
    /* Style for Ragister Table */
    .Ragister_Table {
        margin: 20px;
    }

    .lable_Ragister {
        background-color: #007bff;
        color: #fff;
        padding: 10px;
        font-weight: bold;
        margin-bottom: 10px;
    }

    #GridView1 {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    #GridView1 th, #GridView1 td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    #GridView1 th {
        <%--background-color: #f2f2f2;--%>
    }

    /* Style for Admission Table */
    .Admission_Table {
        margin: 20px;
    }

    .lable_Admission {
        background-color: #28a745;
        color: #fff;
        padding: 10px;
        font-weight: bold;
        margin-bottom: 10px;
    }

    #GridView2 {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    #GridView2 th, #GridView2 td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    #GridView2 th {
        
        color:White;
    }

    /* Logout Button Style */
    .logout {
        margin-top: 50px;
        margin-left:650px;
       
    }

    #btnlogout {
        background-color: #dc3545;
    color: #fff;
    padding: 10px 15px;
    cursor: pointer;
    font-size: 16px;
    border-radius: 25px;
    box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
    }
    .search_Box {
    margin: 20px;
}

#TextBox1, #TextBox2 {
    padding: 10px;
    width: 200px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-right: 10px;
}

#Button1, #ButtonSearch2 {
    background-color: #007bff;
    color: #fff;
    padding: 10px 15px;
    cursor: pointer;
    font-size: 16px;
    border: none;
    border-radius: 5px;
}

#Button1:hover, #ButtonSearch2:hover {
    background-color: #0056b3;
}
</style>



</head>
<body>
    <form id="form1" runat="server"> 
    <div class="Ragister_Table">
     <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter search text" ></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search"  OnClientClick="return searchOperation();" OnClick="Button1_Click" />
    <div class="lable_Ragister">    
        <asp:Label ID="lb1" runat="server" Text="Ragister Details" /> 
        </div>

        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
            GridLines="Horizontal" AutoGenerateColumns="False" DataKeyNames="id" >
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Gmail" HeaderText="Gmail" SortExpression="Gmail" />
                <asp:BoundField DataField="password" HeaderText="password" 
                    SortExpression="password" />
                <asp:BoundField DataField="confirmpassword" HeaderText="confirmpassword" 
                    SortExpression="confirmpassword" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
       
        <br />
        <br />
        </div>
        <div class="Admission_Table">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter search text" />
<asp:Button ID="ButtonSearch2" runat="server" Text="Search" 
                onclick="ButtonSearch2_Click"  />
        <div  class="lable_Admission">

                <asp:Label ID="lb" runat="server" Text="Admission Details" /> 
                </div>
            <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#336666" 
                    BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
                    GridLines="Horizontal" AutoGenerateColumns="False" DataKeyNames="id" >
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="FullName" HeaderText="FullName" 
                        SortExpression="FullName" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="moNo" HeaderText="moNo" SortExpression="moNo" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="birthdate" HeaderText="birthdate" 
                        SortExpression="birthdate" />
                    <asp:BoundField DataField="gender" HeaderText="gender" 
                        SortExpression="gender" />
                    <asp:BoundField DataField="category" HeaderText="category" 
                        SortExpression="category" />
                    <asp:BoundField DataField="course" HeaderText="course" 
                        SortExpression="course" />
                    <asp:BoundField DataField="passingMY" HeaderText="passingMY" 
                        SortExpression="passingMY" />
                    <asp:BoundField DataField="seatno" HeaderText="seatno" 
                        SortExpression="seatno" />
                    <asp:BoundField DataField="outofmarks" HeaderText="outofmarks" 
                        SortExpression="outofmarks" />
                    <asp:BoundField DataField="percentage" HeaderText="percentage" 
                        SortExpression="percentage" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
               
    </div>

    <div class="logout">
        <asp:Button ID="btnlogout" runat="server" Text="Log-out" 
            onclick="btnlogout_Click" />
    </div>
    </form>
</body>
</html>
