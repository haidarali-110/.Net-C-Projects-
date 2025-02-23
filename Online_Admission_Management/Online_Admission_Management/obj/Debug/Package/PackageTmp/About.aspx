<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Online_Admission_Management.About" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style>
       body
        {
      
        background-image:url(https://th.bing.com/th/id/OIP.hQCXD3APKhx9iwjxwoDWhQHaDt?rs=1&pid=ImgDetMain);
          background-size: cover;
           font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
     color:Black;
            
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
    
    .content {
    max-width: 1300px;
    margin: 0 auto;
    padding: 20px;
    color: black; /* Set the font color for the content to black */
}

h1 {
    color: Red;
    text-decoration: underline; /* Add underline to h1 */
}

p {
    line-height: 1.6;
   
}

.footer1_img {
    text-align: center;
    margin-top: 20px;
}

.footer1_img img {
    max-width: 100%;
    height: auto;
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

     <div class="content">
     <h1>The University</h1>
    <p>
     Target x University and the township of  Vidyanagar, a high-tech education campus is a joint initiative, purely philanthropic in nature, 
    by a large number of industrialists and technocrats, noble farmers and affluent businessmen for the mission of “Social Upliftment through Education”. The University is 
    established by the State Government by the enactment of Act No.19/2005 on 12th April 2005. It is approved under section 2(f) by the University Grants Commission (UGC). 
    In consideration of its contribution to the Education in a short period of time, the University has been given Permanent Membership in renowned Academic & Industry Associations, 
    such as the Association of Indian Universities (AIU), Association of Commonwealth Universities (ACU), Federation of Indian Chambers of Commerce and Industry(FICCI), All India 
    Management Association (AIMA), Confederation of Indian Industry(CII), International Association of Universities (IAU), Associated Chambers of Commerce and Industry of India (ASSOCHAM),
     Association of the Universities of Asia and the Pacific (AUAP), PHD Chamber of Commerce and Industry (PHDCCI), Recognized by Department of Scientific and Industrial Research (DSIR), 
     Govt. of Gujarat appointed Start-up Nodal Institute, Centre for Entrepreneurship Development (CED), Student Start-up & Innovation Policy (SSIP), National Centre for Management of A
     gricultural Extension (MANAGE).Ganpat University offers various unique, quality, industry-linked and sector-focused Diploma, Undergraduate, Postgraduate and Research level programs 
     (Professional and Non-professional) in the field of Engineering, Management, Computer Applications, Pharmacy, Sciences, Commerce & Social Science, Architecture, Design & Planning, 
     Maritime Studies, Nursing, Agriculture, Physiotherapy & Optometry etc.
    </p>
    
    </div>
    <div class="footer1_img">
    <img src="https://d2z4x7fn3a0wyp.cloudfront.net/content_text_with_media/content-text-with-media/acrobat-dnhjcbs4ac.png" />
    </div>
      <div class="footer">
    <footer>
<div class="footer">
<div class="row">
<a href="#"><i class="fa fa-facebook"></i></a>
<a href="#"><i class="fa fa-instagram"></i></a>
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
