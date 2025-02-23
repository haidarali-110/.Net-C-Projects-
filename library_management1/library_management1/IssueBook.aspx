<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IssueBook.aspx.cs" Inherits="library_management1.IssueBook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Issue Book</title>
    <style>
  /* General Styles */
body {
    font-family: 'Poppins', sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
}

/* Navbar Styling */
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

/* Issue Book Form */
.issue-container {
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    background-color: white;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    text-align: center;
}

.issue-container h2 {
    margin-bottom: 20px;
    color: #2c3e50;
}

/* Input Fields */
.input-field, .issue-container input[type="date"] {
    width: 100%;
    padding: 12px;
    margin: 8px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

/* Labels */
.label {
    font-size: 16px;
    font-weight: bold;
    color: #2c3e50;
    display: block;
    margin-top: 10px;
}

/* Button Styling */
.btn-issue {
    width: 100%;
    padding: 12px;
    background-color: #27ae60;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.btn-issue:hover {
    background-color: #2ecc71;
}

/* Responsive Design */
@media (max-width: 600px) {
    .issue-container {
        width: 90%;
    }
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
    <div>

     <div class="issue-container">
            <h2>Issue a Book</h2>

            <asp:TextBox ID="txtName" runat="server" Placeholder="Name" CssClass="input-field"></asp:TextBox>
            <asp:TextBox ID="txtBookID" runat="server" Placeholder="Book ID" CssClass="input-field"></asp:TextBox>
               <asp:TextBox ID="txtBookName" runat="server" Placeholder="Book Name" CssClass="input-field"></asp:TextBox>
                  <asp:TextBox ID="txtAuthor" runat="server" Placeholder="Author" CssClass="input-field"></asp:TextBox>
            <asp:Label ID="lblIssueDate" runat="server" Text="Issue Date :" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtIssueDate" runat="server"  TextMode="Date"></asp:TextBox>

            <asp:Button ID="btnIssue" runat="server" Text="Issue Book" CssClass="btn-issue" OnClick="btnIssue_Click" ></asp:Button>
        </div>
    </div>
    </form>
</body>
</html>
