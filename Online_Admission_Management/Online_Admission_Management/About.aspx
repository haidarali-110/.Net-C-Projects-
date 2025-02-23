﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Online_Admission_Management.About" %>

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

.footer
{
    background: #111;
}

div.container-footer.w-container {
  box-sizing: border-box;
  margin-left: auto;
  margin-right: auto;
  max-width: 940px;
  padding-bottom: 40px;
  padding-top: 70px;
}

div.container-footer.w-container:after {
  clear: both;
  content: " ";
  display: table;
  grid-column-end: 2;
  grid-column-start: 1;
  grid-row-end: 2;
  grid-row-start: 1;
}

div.container-footer.w-container:before {
  content: " ";
  display: table;
  grid-column-end: 2;
  grid-column-start: 1;
  grid-row-end: 2;
  grid-row-start: 1;
}

div.w-row {
  box-sizing: border-box;
  margin-left: -10px;
  margin-right: -10px;
}

div.w-row:after {
  clear: both;
  content: " ";
  display: table;
  grid-column-end: 2;
  grid-column-start: 1;
  grid-row-end: 2;
  grid-row-start: 1;
}

div.w-row:before {
  content: " ";
  display: table;
  grid-column-end: 2;
  grid-column-start: 1;
  grid-row-end: 2;
  grid-row-start: 1;
}

div.footer-column.w-clearfix.w-col.w-col-4 {
  box-sizing: border-box;
  float: left;
  min-height: 1px;
  padding-left: 10px;
  padding-right: 10px;
  position: relative;
  width: 33.3333%;
}

div.footer-column.w-clearfix.w-col.w-col-4:after {
  clear: both;
  content: " ";
  display: table;
  grid-column-end: 2;
  grid-column-start: 1;
  grid-row-end: 2;
  grid-row-start: 1;
}

div.footer-column.w-clearfix.w-col.w-col-4:before {
  content: " ";
  display: table;
  grid-column-end: 2;
  grid-column-start: 1;
  grid-row-end: 2;
  grid-row-start: 1;
}

img.failory-logo-image {
  border-width: 0;
  box-sizing: border-box;
  display: inline-block;
  float: left;
  max-width: 100%;
  vertical-align: middle;
}

h3.footer-failory-name {
  box-sizing: border-box;
  color: #FFFFFF;
  display: block;
  font-family: Lato, sans-serif;
  font-size: 20px;
  font-weight: 900;
  line-height: 1.1em;
  margin-bottom: 10px;
  margin-left: 10px;
  margin-top: 24px;
}

p.footer-description-failory {
  box-sizing: border-box;
  color: rgba(255, 255, 255, 0.8);
  display: block;
  font-family: Lato, sans-serif;
  font-size: 17px;
  font-weight: 300;
  letter-spacing: .5px;
  line-height: 1.5em;
  margin-bottom: 16px;
  margin-top: 15px;
}

br {
  box-sizing: border-box;
}

div.footer-column.w-col.w-col-8 {
  box-sizing: border-box;
  float: left;
  min-height: 1px;
  padding-left: 10px;
  padding-right: 10px;
  position: relative;
  width: 66.6667%;
}

div.w-col.w-col-8 {
  box-sizing: border-box;
  float: left;
  min-height: 1px;
  padding-left: 0;
  padding-right: 0;
  position: relative;
  width: 66.6667%;
}

div.w-col.w-col-7.w-col-small-6.w-col-tiny-7 {
  box-sizing: border-box;
  float: left;
  min-height: 1px;
  padding-left: 0;
  padding-right: 0;
  position: relative;
  width: 58.3333%;
}

h3.footer-titles {
  box-sizing: border-box;
  color: #FFFFFF;
  display: block;
  font-family: Lato, sans-serif;
  font-size: 20px;
  font-weight: 900;
  line-height: 1.1em;
  margin-bottom: 0;
  margin-left: 0;
  margin-top: 24px;
}

p.footer-links {
  box-sizing: border-box;
  color: rgba(255, 255, 255, 0.8);
  display: block;
  font-family: Lato, sans-serif;
  font-size: 17px;
  font-weight: 300;
  letter-spacing: .5px;
  line-height: 1.8em;
  margin-bottom: 16px;
  margin-top: 2px;
}

a {
  background-color: transparent;
  box-sizing: border-box;
  color: #FFFFFF;
  font-family: Lato, sans-serif;
  font-size: 17px;
  font-weight: 400;
  line-height: 1.2em;
  text-decoration: none;
}

a:active {
  outline: 0;
}

a:hover {
  outline: 0;
}

span.footer-link {
  box-sizing: border-box;
  color: rgba(255, 255, 255, 0.8);
  font-weight: 300;
}

span.footer-link:hover {
  color: #FFFFFF;
  font-weight: 400;
}

span {
  box-sizing: border-box;
}

strong {
  box-sizing: border-box;
  font-weight: 700;
}

div.w-col.w-col-5.w-col-small-6.w-col-tiny-5 {
  box-sizing: border-box;
  float: left;
  min-height: 1px;
  padding-left: 0;
  padding-right: 0;
  position: relative;
  width: 41.6667%;
}

div.column-center-mobile.w-col.w-col-4 {
  box-sizing: border-box;
  float: left;
  min-height: 1px;
  padding-left: 0;
  padding-right: 0;
  position: relative;
  width: 33.3333%;
}

a.footer-social-network-icons.w-inline-block {
  background-color: transparent;
  box-sizing: border-box;
  color: #FFFFFF;
  display: inline-block;
  font-family: Lato, sans-serif;
  font-size: 17px;
  font-weight: 400;
  line-height: 1.2em;
  margin-right: 8px;
  margin-top: 10px;
  max-width: 100%;
  opacity: .8;
  text-decoration: none;
}

a.footer-social-network-icons.w-inline-block:active {
  outline: 0;
}

a.footer-social-network-icons.w-inline-block:hover {
  opacity: 1;
  outline: 0;
}

img {
  border-width: 0;
  box-sizing: border-box;
  display: inline-block;
  max-width: 100%;
  vertical-align: middle;
}

p.footer-description {
  box-sizing: border-box;
  color: rgba(255, 255, 255, 0.8);
  display: block;
  font-family: Lato, sans-serif;
  font-size: 17px;
  font-weight: 300;
  letter-spacing: .5px;
  line-height: 1.5em;
  margin-bottom: 16px;
  margin-top: 15px;
}

strong.link-email-footer {
  box-sizing: border-box;
  font-weight: 700;
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
        <img src="https://golearnershub.com/wp-content/uploads/2021/03/How-to-Apply-For-College-of-Education-2021-Admission-1.jpg" alt="Logo" />
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
    <div class="container-footer w-container">
  <div class="w-row">
    <div class="footer-column w-clearfix w-col w-col-4"><img src="https://uploads-ssl.webflow.com/5966ea9a9217ca534caf139f/596d33f36607b12cfdaf8ad2_LogoWhite.png" alt="" width="40" class="failory-logo-image">
      <h3 class="footer-failory-name">Failory</h3>
      <p class="footer-description-failory">Lorem ipsum dolor sit amet.<br></p>
    </div>
    <div class="footer-column w-col w-col-8">
      <div class="w-row">
        <div class="w-col w-col-8">
          <div class="w-row">
            <div class="w-col w-col-7 w-col-small-6 w-col-tiny-7">
              <h3 class="footer-titles">Learn</h3>
              <p class="footer-links"><a href="" target="_blank"><span class="footer-link">Failed Startups<br></span></a><a href=""><span class="footer-link">Successful Startups<br></span></a><a href=""><span class="footer-link">Blog</span></a><span><br></span><a href=""><span class="footer-link">Entrepreneurial Tools<br></span></a><a href=""><span class="footer-link">Startup Cemetery<br></span></a><a href=""><span class="footer-link">Podcast</span></a><strong><br></strong></p>
            </div>
            <div class="w-col w-col-5 w-col-small-6 w-col-tiny-5">
              <h3 class="footer-titles">Other</h3>
              <p class="footer-links"><a href=""><span class="footer-link">Sponsor Us!<br></span></a><a href=""><span class="footer-link">Open Startup<br></span></a><a href=""><span class="footer-link"></span></a><a href=""><span class="footer-link">Contribute<br></span></a><a href=""><span class="footer-link">FAQ</span></a><strong><br></strong></p>
            </div>
          </div>
        </div>
        <div class="column-center-mobile w-col w-col-4">
          <h3 class="footer-titles">Follow Us!</h3><a href="" target="_blank" class="footer-social-network-icons w-inline-block"><img src="https://uploads-ssl.webflow.com/5966ea9a9217ca534caf139f/5c8dbf0a2f2b67e3b3ba079c_Twitter%20Icon.svg" width="20" alt="Twitter icon"></a><a href="" target="_blank" class="footer-social-network-icons w-inline-block"><img src="https://uploads-ssl.webflow.com/5966ea9a9217ca534caf139f/5c8dbfe70fcf5a0514c5b1da_Instagram%20Icon.svg" width="20" alt="Instagram icon"></a><a href="" target="_blank" class="footer-social-network-icons w-inline-block"><img src="https://uploads-ssl.webflow.com/5966ea9a9217ca534caf139f/5c8dbe42e1e6034fdaba46f6_Facebook%20Icon.svg" width="20" alt="Facebook Icon"></a><a href="" target="_blank" class="footer-social-network-icons w-inline-block"><img src="https://uploads-ssl.webflow.com/5966ea9a9217ca534caf139f/5c8dc0002f2b676eb4ba0869_LinkedIn%20Icon.svg" width="20" alt="LinkedIn Icon"></a><a href="" target="_blank" class="footer-social-network-icons w-inline-block"><img src="https://uploads-ssl.webflow.com/5966ea9a9217ca534caf139f/5c8dc0112f2b6739c9ba0871_Pinterest%20Icon.svg" width="20" alt="Pinterest Icon" class=""></a>
          <p class="footer-description">Email me at: <a href=""><strong class="link-email-footer">Lorem Ipsum</strong></a><br></p>
        </div>
      </div>
    </div>
  </div>
</div>
    </div>
    </form>
</body>
</html>
