<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Admission_Management.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>

    <style>
        body
        {
      
       background-image:url(https://th.bing.com/th/id/OIP.hQCXD3APKhx9iwjxwoDWhQHaDt?rs=1&pid=ImgDetMain);
          background-size: cover;
      
            
        }
       

     .Header {
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        padding: 10px 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        position: sticky;
        top: 0;
        z-index: 1000;
         border-radius:25px;
    }

    .Logo img {
        height: 40px; /* Adjust the height of the logo */
    }

    .Links {
        display: flex;
        gap: 20px;
    }

    /* Style hyperlinks */
    .Links a {
        text-decoration: none;
        color: #333;
        transition: color 0.3s ease;
    }

    .Links a:hover {
        color: #f00; /* Change the color on hover */
    }

.container {
    width: 300px; /* Adjust width as needed */
    margin: 200px auto auto 37%; /* Center the form horizontally */
    padding: 50px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
    text-align: center; /* Center text within the container */
      border-radius:25px;
    
}

.container h2 {
    font-family: Arial, sans-serif;
    color: #333;
}

.container input[type="text"],
.container input[type="password"] {
    width: calc(100% - 20px); /* Adjust width for input fields */
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 25px;
    box-sizing: border-box;
}



.container button {
    width: 100%;
    padding: 25px;
    background-color: Blue; /* Button color */

    border: none;
    border-radius: 25px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.container button:hover {
    background-color: #0056b3; /* Button color on hover */
}




    </style>

</head>
<body >
    <form id="form1" runat="server">
   
 <div class="Header" >
    <div class="Logo">
        <img src="https://cdn.targetx.in/fetch/15/5/COMPANY/LOGO/Target%20Logo.svg" alt="Logo" />
    </div>
    <div class="Links"">
       <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
       
        <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
      
            <asp:HyperLink ID="hlabout" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink>
             <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx">Admin Login</asp:HyperLink>
    </div>
</div>
  <div class="container">
    <h2>Login</h2>
    <asp:TextBox ID="txtemail" runat="server" placeholder="Email"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server"
        ControlToValidate="txtemail"
        ErrorMessage="Email is required."
        Display="Dynamic"
        ForeColor="Red"></asp:RequiredFieldValidator><br />
    
    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server"
        ControlToValidate="txtpassword"
        ErrorMessage="Password is required."
        Display="Dynamic"
        ForeColor="Red"></asp:RequiredFieldValidator><br />
   
    <asp:Button ID="txtsubmit" runat="server" Text="Login" 
          onclick="txtsubmit_Click" Height="32px" Width="74px"  />
         <%-- <br />
         <div style="margin:10px;">
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Create Account?New user</asp:HyperLink>
      </div>--%>
</div>


    </form>
</body>
</html>
