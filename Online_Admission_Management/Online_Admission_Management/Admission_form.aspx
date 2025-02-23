 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admission_form.aspx.cs" Inherits="Online_Admission_Management.Admission_form" %>

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
      position: static;
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
        color: Blue; /* Change the color on hover */
    }

.Admission_from {
  width: 700px; 
  margin: 15px auto;
      background-color: #f4f4f4;
  padding: 20px;
  border: 1px solid #ddd;
  border-radius: 25px;
}

.Admission_from h1 {
  text-align: center; 
  margin-bottom: 20px;
}

.Admission_from table {
  width: 100%;
  border-collapse: separate;
}

.Admission_from td {
  padding: 5px 5px;
  width:15px;
}  

.course-selection {
        border:2px;
        border-radius: 25px;
        padding: 10px;
        text-align: center;
          background-color: Silver;
    }
    
    
.Admission_from input[type="text"], 
.Admission_from select {
  width: 200px;
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

  #Button1 
  {
      margin-left:300px;
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 25px;
        cursor: pointer;
    }

    #Button1:hover {
        background-color: #45a049;
    }
    
  


  

    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="Header">
    <div class="Logo">
        <img src="https://golearnershub.com/wp-content/uploads/2021/03/How-to-Apply-For-College-of-Education-2021-Admission-1.jpg" alt="Logo"/>
        </div>
    <div class="Links">
   <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/Login.aspx">Home</asp:HyperLink>
       
        <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
         <asp:HyperLink ID="hlAdminssion" runat="server" NavigateUrl="~/Admission_form.aspx">Admission</asp:HyperLink>
            <asp:HyperLink ID="hlabout" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink>
             <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Login.aspx">Admin Login</asp:HyperLink>
    </div>
</div>
</div>

<div class="Admission_from">
              <h1>College admission process</h1>
              <table>
              <tr>
              <td  class="course-selection" colspan="2">Personal Detail</td>
              </tr>
              <tr>
              <td>FULL NAME(As per LC/Marksheet)*</td>
              <td>
                  <asp:TextBox ID="txtname" runat="server" placeholder="Full Name"></asp:TextBox></td>
              </tr>

               <tr>
              <td>ADDRESS*</td>
              <td>
                  <asp:TextBox ID="txtaddress" runat="server" placeholder="Address"></asp:TextBox> </td>
              </tr>

               <tr>
              <td>MOBILE NUMBER*</td>
              <td>  <asp:TextBox ID="txtmono" runat="server" placeholder="Mobile NO."></asp:TextBox></td>
              </tr>

               <tr>
              <td>EMAIL ADDRESS</td>
              <td>  <asp:TextBox ID="txtemail" runat="server" placeholder="Email address"></asp:TextBox></td>
              </tr>

               <tr>
              <td>BIRTH DATE*</td>
              <td rowspan="1" scope="col">  <asp:TextBox ID="txtbdate" runat="server" TextMode="Date" ></asp:TextBox></td>
              </tr>

               <tr>
              <td>GENDER*</td>
              <td>
                  <asp:DropDownList ID="DropDownList1" runat="server">
                 
                  <asp:ListItem Selected="True">MALE</asp:ListItem>
                  <asp:ListItem>FEMALE</asp:ListItem>
                  </asp:DropDownList>
              </td>
              </tr>

               <tr>
              <td>CATEGORY</td>
              <td>  <asp:DropDownList ID="DropDownList2" runat="server">
              
                  <asp:ListItem Selected="True">GENERAL</asp:ListItem>
                  <asp:ListItem>SC</asp:ListItem>
                  <asp:ListItem>ST</asp:ListItem>
                  <asp:ListItem>OBC</asp:ListItem>
                  <asp:ListItem>EWS</asp:ListItem>
                  </asp:DropDownList></td>
              </tr>
              <tr>
              <td  class="course-selection" colspan="2">
              Please select the course fro admission process*
              </td>
              </tr>

               <tr>
              <td></td>
              <td></td>
              </tr>

               <tr>
              <td>
                  <asp:DropDownList ID="DropDownList3" runat="server">
                   <asp:ListItem>Select Course</asp:ListItem>
                  <asp:ListItem>B.A</asp:ListItem>
                   <asp:ListItem>B.Com.</asp:ListItem>
                    <asp:ListItem>B.Sc</asp:ListItem>
                    <asp:ListItem>B.C.A</asp:ListItem>
                    <asp:ListItem>I.T.I</asp:ListItem>
                    <asp:ListItem>P.G.D.M.L.T</asp:ListItem>
                    <asp:ListItem>DHTM(Hotel Manage)</asp:ListItem>
                   
                  </asp:DropDownList>
                  
                  </td>
              </tr>

              <tr>
              <td  class="course-selection" colspan="2">HSC Maeksheet Details:(please enter a details for College admission)*</td>
              </tr>

               <tr>
              <td>PASSING MONTH & YEAR</td>
              <td>  <asp:TextBox ID="txtpmy" runat="server" placeholder="Ex.(March-2020)"></asp:TextBox>  </td>
              </tr>

               <tr>
              <td>SEAT NO.</td>
              <td><asp:TextBox ID="txtseat" runat="server" placeholder="Ex.(G-102915)"></asp:TextBox></td>
              </tr>

               <tr>
              <td>OBTAIN MARK/OUT OF MARKS</td>
              <td><asp:TextBox ID="txtmark" runat="server" placeholder="650/700"></asp:TextBox></td>
              </tr>

             <tr>
              <td>PERCENTAGE</td>
              <td><asp:TextBox ID="txtpercentage" runat="server" placeholder="85.56"></asp:TextBox></td>
              </tr>

               <tr>
                  <td >
                      <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" /></td>
               </tr>

               
               


  
  </table>

</div>
</div>

    </form>
</body>
</html>
