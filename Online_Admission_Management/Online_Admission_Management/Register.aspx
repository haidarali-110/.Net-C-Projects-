

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Online_Admission_Management.Register" %>

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

    /* Overall styling for the registration page */
    .Register_page {
     
        margin-top:20px;
        margin-right:auto;
        margin-left:35%;
        padding: 30px;
        border: 1px solid #ddd;
        border-radius: 8px;
        max-width: 400px;
        background-color: #f9f9f9;
          border-radius:25px;
    }

    /* Styling for the table within the registration page */
    .auto-style1 {
        width: 100%;
    }

    /* Styling for table cells */
    .auto-style1 td {
        padding: 5px;
        border-bottom: 1px solid #ddd;
    }

    /* Styling for textboxes */
    .auto-style1 input[type="text"]
    {
        margin-top:9px;
         width: 100%;
        padding: 10px;
        box-sizing: border-box;
      
          border-radius:15px;
        
        }
    .auto-style1 input[type="password"] {
        width: 100%;
        padding: 10px;
        box-sizing: border-box;
        margin-top:10px;
        margin-bottom: 5px;
          border-radius:15px;
    }

    /* Styling for dropdown list */
    .auto-style1 select {
        width: 100%;
        padding: 8px;
        box-sizing: border-box;
        margin-bottom: 5px;
        border-radius:15px;
    }

    /* Styling for radio button list */
    .auto-style1 input[type="radio"] {
        margin-right: 5px;
          
    }

    /* Styling for the submit button */
    .auto-style1 input[type="submit"] {
        background-color: #4caf50;
        color: white;
        padding: 10px 18px;
        border: none;
        border-radius: 15px;
        cursor: pointer;
    }

    /* Hover effect for the submit button */
    .auto-style1 input[type="submit"]:hover {
        background-color: #45a049;
    }




    
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <div class="Header">
    <div class="Logo">
        <img src="https://golearnershub.com/wp-content/uploads/2021/03/How-to-Apply-For-College-of-Education-2021-Admission-1.jpg" alt="Logo" />
    </div>
    <div class="Links">
        <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
      
        <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
      
            <asp:HyperLink ID="hlabout" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink>
             <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx">Admin Login</asp:HyperLink>
    </div>
</div>


    <div class="Register_page">
    <p>
            <table class="auto-style1">
                <tr>
                    <td>Name :</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:requiredfieldvalidator ID="Requiredfieldvalidator1" runat="server" errormessage="fill Name:" ControlToValidate="TextBox1" ForeColor="Red"></asp:requiredfieldvalidator>
                    </td>
                </tr>
                  <tr>
                    <td>Gmail</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"> </asp:TextBox>
                        
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="TextBox4"
                            ForeColor="Red"  ErrorMessage="*Enter the corect fromat" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                       

                    </td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            


                    </td>
                </tr>
                <tr>
                    <td>City</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Patan" Value="Patan"></asp:ListItem>
                            <asp:ListItem Text="Ahemdabad" Value="Ahemdabad"></asp:ListItem>
                            <asp:ListItem Text="palanpur" Value="palanpur"></asp:ListItem>
                             <asp:ListItem Text="Sidhpur" Value="Sidhpur"></asp:ListItem>
                              <asp:ListItem Text="Mahesana" Value="Mahesana"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
              
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Register" 
                            onclick="Button1_Click"  />
                    </td>
                </tr>
            </table>
        </p>
    
    </div>


    </form>
</body>
</html>
