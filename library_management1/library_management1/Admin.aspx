<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="library_management1.Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - Library Management</title>
    <style>
       
        .login-container {
    width: 350px;
    margin: 100px auto;
    padding: 45px;
    background: #f4f4f4;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.login-container h2 {
    margin-bottom: 20px;
    color: #333;
}

.login-container input[type="text"],
.login-container input[type="password"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

.login-container input[type="text"]:focus,
.login-container input[type="password"]:focus {
    border-color: #007bff;
    outline: none;
}

.login-container input[type="submit"],
.login-container button {
    width: 100%;
    padding: 10px;
    background: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    margin-top: 10px;
}

.login-container input[type="submit"]:hover,
.login-container button:hover {
    background: #0056b3;
}
    </style>
</head>
<body style="background-color: #FFFFCC">
    <form id="form1" runat="server">
    <div class="login-container">
        <h2>Admin Login</h2>
       
            <asp:TextBox ID="txtUsername" runat="server" Placeholder="Username" ></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" Placeholder="Password" TextMode="Password" ></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server"  Text="Login" 
            onclick="btnLogin_Click"  />
       
    </div>
    </form>
</body>
</html>
