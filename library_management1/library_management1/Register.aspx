<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="library_management1.Ragister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
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

/* Register Form */
.register-container {
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    background-color: white;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    text-align: center;
}

.register-container h2 {
    margin-bottom: 20px;
    color: #2c3e50;
}

.register-container input, .register-container .form-control {
    width: 100%;
    padding: 12px;
    margin: 8px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

/* Button Styling */
.btn-register {
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

.btn-register:hover {
    background-color: #2ecc71;
}

/* Responsive Design */
@media (max-width: 600px) {
    .register-container {
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

    <div class="register-container">
    
            <h2>Register</h2>
            
            <asp:TextBox ID="txtFullName" runat="server" Placeholder="Full Name"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" Placeholder="Email" TextMode="Email"></asp:TextBox>
            <asp:TextBox ID="txtAddress" runat="server" Placeholder="Address" ></asp:TextBox>
              <asp:TextBox ID="txtPhone" runat="server" Placeholder="Phone No." ></asp:TextBox>
                <asp:TextBox ID="txtDOB" runat="server" Placeholder="Date of Birth" TextMode="Date" ></asp:TextBox>
                  <asp:TextBox ID="txtGender" runat="server" Placeholder="Gender" ></asp:TextBox>

            <asp:Label ID="Label1" runat="server" Text="VALID UPTO :"></asp:Label>  
            <asp:TextBox ID="validdate" runat="server"  class="form-control" placeholder="VALID UPTO" TextMode="Date"></asp:TextBox>
            <asp:Button ID="btnRegister" runat="server" Text="Register" 
                CssClass="btn-register" onclick="btnRegister_Click" />
        
    </div>
     <asp:Button ID="btnBack" runat="server" Text="Back" 
                CssClass="btn-register" onclick="btnBack_Click" />
    </form>
</body>
</html>
