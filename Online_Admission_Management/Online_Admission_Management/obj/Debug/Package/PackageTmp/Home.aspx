<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Admission_Management.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       body
        {
      
         /* Set the height as needed */

          background-color:transparent;
          background-size: cover;
         height:400px;
        

            font-size: 100%;
              background: #cedce3;
     
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
        display: flex;
        flex-direction: column; /* Stack items vertically */
       
    }

    .Content {
        order: 2; /* Set the order of the content, making it appear below the image */
    }

    .left_side_img {
        order: 1; /* Set the order of the image, making it appear above the content */
        margin-bottom: 20px; /* Add margin to separate the image from the content */
          margin-top:10px;
    }

    .Content p {
        margin-bottom: 10px; /* Add margin to separate paragraphs */
        font-size:larger;
        color: Black;
      
    }

    .Content h1 {
        font-weight: 100; /* Apply font weight */
        margin-bottom: 10px; /* Add margin to separate heading from content */
    }
   
 .right_side_poster {
  float: right;
  margin-left: 10px; /* Adjust the margin as needed */
}

.right_side_poster img {
  width: 100%; /* Make the image fill its container */
  height: auto; /* Maintain the aspect ratio */
  display: block; /* Remove extra space below the image */
}
.footer{
background:#000;
padding:30px 0px;
font-family: 'Play', sans-serif;
text-align:center;
}

.footer .row{
width:100%;
margin:1% 0%;
padding:0.6% 0%;
color:gray;
font-size:0.8em;
}

.footer .row a{
text-decoration:none;
color:gray;
transition:0.5s;
}

.footer .row a:hover{
color:#fff;
}

.footer .row ul{
width:100%;
}

.footer .row ul li{
display:inline-block;
margin:0px 30px;
}

.footer .row a i{
font-size:2em;
margin:0% 1%;
}

@media (max-width:720px){
.footer{
text-align:left;
padding:5%;
}
.footer .row ul li{
display:block;
margin:10px 0px;
text-align:left;
}
.footer .row a i{
margin:0% 3%;
}



    </Style>
    <!--FONT AWESOME-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--GOOGLE FONTS-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Fredoka+One&family=Play&display=swap" rel="stylesheet"> 
</head>
<body>
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
     <div class="left_side_img">
        <img src="https://www.mvworldschool.com/wp-content/uploads/2020/06/Admission-Open-1.png" alt="left_side_img" />
        
    </div>
    <div class="right_side_poster">
      <img src="Ad_image/Ad.jpg"  alt="right_side_poster"/>
    </div>
   
    <div class="Content">
   
     <p ><h1>Enroll now  ?<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink></h1></p>
        <p style="font-weight:300;"><h1>INSTRUCTIONS</h1></p>
        <p> <img src="https://as1.ftcdn.net/v2/jpg/06/77/49/42/1000_F_677494291_0C5Oz5XxYd7UdaDzuhSaGoe2xiYn9Gzw.jpg" width="15" height="14" alt="" title="" class="img-small" style="box-sizing: border-box; outline: none; border: 0px; max-width: 100%; height: auto; color: rgb(119, 119, 119); font-family: Inter, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 800; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(247, 247, 247); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"> The online application is for admission to programmes offered in University.</p>
        <p> <img src="https://as1.ftcdn.net/v2/jpg/06/77/49/42/1000_F_677494291_0C5Oz5XxYd7UdaDzuhSaGoe2xiYn9Gzw.jpg" width="15" height="14" alt="" title="" class="img-small" style="box-sizing: border-box; outline: none; border: 0px; max-width: 100%; height: auto; color: rgb(119, 119, 119); font-family: Inter, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 800; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(247, 247, 247); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"> Application Form Fee is Non-Refundable.</p>
        <p> <img src="https://as1.ftcdn.net/v2/jpg/06/77/49/42/1000_F_677494291_0C5Oz5XxYd7UdaDzuhSaGoe2xiYn9Gzw.jpg" width="15" height="14" alt="" title="" class="img-small" style="box-sizing: border-box; outline: none; border: 0px; max-width: 100%; height: auto; color: rgb(119, 119, 119); font-family: Inter, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 800; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(247, 247, 247); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"> Email ID submitted at the time of registration will be used for all correspondences until </p>
        <p> enrolment is completed Change in Email ID will NOT be permitted under any circumstances.</p>
        
        <p> <img src="https://as1.ftcdn.net/v2/jpg/06/77/49/42/1000_F_677494291_0C5Oz5XxYd7UdaDzuhSaGoe2xiYn9Gzw.jpg" width="15" height="14" alt="" title="" class="img-small" style="box-sizing: border-box; outline: none; border: 0px; max-width: 100%; height: auto; color: rgb(119, 119, 119); font-family: Inter, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 800; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(247, 247, 247); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"> Applicants are strongly advised to use the University Query Management System </p>
        <p>    ( University-QMS), rather than an email, to get a quick response.</p>
        <p> <img src="https://as1.ftcdn.net/v2/jpg/06/77/49/42/1000_F_677494291_0C5Oz5XxYd7UdaDzuhSaGoe2xiYn9Gzw.jpg" width="15" height="14" alt="" title="" class="img-small" style="box-sizing: border-box; outline: none; border: 0px; max-width: 100%; height: auto; color: rgb(119, 119, 119); font-family: Inter, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 800; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(247, 247, 247); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"> Register and verify your email ID</p>
        <p> <img src="https://as1.ftcdn.net/v2/jpg/06/77/49/42/1000_F_677494291_0C5Oz5XxYd7UdaDzuhSaGoe2xiYn9Gzw.jpg" width="15" height="14" alt="" title="" class="img-small" style="box-sizing: border-box; outline: none; border: 0px; max-width: 100%; height: auto; color: rgb(119, 119, 119); font-family: Inter, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 800; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(247, 247, 247); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"> Click on [ <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink>? for any Query] </p>
   
    </div>
    
    </div>
    

 
             
    <div class="footer">
    <footer>
<div class="footer">
<div class="row">
<a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
<a href="https://www.instagram.com/ali_photos13/?igsh=MTR2a2xzMDNrOW0xNA%3D%3D"><i class="fa fa-instagram"></i></a>
<a href="#"><i class="fa fa-youtube"></i></a>
<a href="#"><i class="fa fa-twitter"></i></a>
</div>

<div class="row">
<ul>
<li><a href="#">Contact us</a></li>
<li><a href="#">Our Services</a></li>
<li><a href="#">Privacy Policy</a></li>
<li><a href="#">Terms & Conditions</a></li>
<li><a href="#">Career</a></li>
</ul>
</div>

<div class="row">
INFERNO Copyright © 2021 Inferno - All rights reserved || Designed By: Haidarali 
</div>
</div>
</footer>
    </div>
   
      </form>
</body>
</html>
