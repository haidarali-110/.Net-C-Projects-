<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Button.aspx.cs" Inherits="library_management1.Button" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management</title>
    <style>

body {
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #6a11cb, #2575fc);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}


.button-container {
    width: 350px;
    padding: 25px;
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
    text-align: center;
}


.button-container h2 {
    margin-bottom: 20px;
    color: #333;
    font-size: 24px;
    font-weight: bold;
}


.btn {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    background: #2575fc;
    color: #fff;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s ease-in-out;
}

.btn:hover {
    background: #1a5cd8;
    box-shadow: 0 4px 10px rgba(37, 117, 252, 0.3);
}


@media (max-width: 400px) {
    .button-container {
        width: 90%;
    }
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <div class="button-container">
            <h2>Library Management</h2>
            
            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnRegister_Click" />
            <asp:Button ID="btnIssueBook" runat="server" Text="Issue Book" CssClass="btn" OnClick="btnIssueBook_Click" />
            <asp:Button ID="btnReturnBook" runat="server" Text="Return Book" CssClass="btn" OnClick="btnReturnBook_Click" />
            <asp:Button ID="btnShowRecords" runat="server" Text="Show Records" CssClass="btn" OnClick="btnShowRecords_Click" />
            <asp:Button ID="btnHome" runat="server" Text="Back to home" CssClass="btn" onclick="btnHome_Click" />

        </div>
    </div>
    </form>
</body>
</html>
