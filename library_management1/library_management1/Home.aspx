<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="library_management1.HOme" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
 
    <style>
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}


.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: #2c3e50;
    padding: 15px 50px;
    color: white;
}

.navbar .logo {
    font-size: 24px;
    font-weight: bold;
}

.nav-links {
    list-style: none;
    padding: 0;
    display: flex;
}

.nav-links li {
    margin: 0 15px;
}

.nav-links a {
    text-decoration: none;
    color: white;
    font-size: 18px;
    transition: 0.3s;
}

.nav-links a:hover {
    color: #f39c12;
}


.hero {
    text-align: center;
   background-image: url("IMG/home.jpg");
    color:White;
    padding: 100px 20px;
    
   
}

.hero h1 {
    font-size: 40px;
    margin-bottom: 10px;
     background: rgba(0, 0, 0, 0.5); 
      padding: 10px 20px;
   
    border:2px;
}

.hero p {
    font-size: 20px;
     background: rgba(0, 0, 0, 0.5); 
      padding: 10px 20px;
      border:2px;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    background: #f39c12;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    margin-top: 20px;
    transition: 0.3s;
}

.btn:hover {
    background: #e67e22;
}

/* Features Section */
.features {
    display: flex;
    justify-content: space-around;
    padding: 50px;
    background: white;
}

.feature {
    text-align: center;
    max-width: 300px;
}

.feature h2 {
    font-size: 22px;
    color: #2c3e50;
}


.books {
    text-align: center;
    padding: 50px;
    background: #ecf0f1;
}

.books ul {
    list-style: none;
    padding: 0;
}

.books li {
    font-size: 18px;
    margin: 10px 0;
}

.events {
    text-align: center;
    padding: 50px;
    background: white;
}

footer {
    text-align: center;
    background: #2c3e50;
    color: white;
    padding: 20px;
    margin-top: 20px;
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

 
    <header class="hero" >
        <h1>Welcome to The Learning Vault Library</h1>
        <p>Your gateway to boundless knowledge and exploration</p>
        <a href="Explore.aspx" class="btn">Explore Now</a>
    </header>


    <section class="features">
        <div class="feature">
            <h2>📖 Extensive Collection</h2>
            <p>Access thousands of books, research papers, and digital archives.</p>
        </div>
        <div class="feature">
            <h2>🌍 Digital Library</h2>
            <p>Explore our vast online resources, journals, and multimedia content.</p>
        </div>
        <div class="feature">
            <h2>📅 Events & Workshops</h2>
            <p>Join book readings, seminars, and interactive learning sessions.</p>
        </div>
    </section>

  
    <section class="books">
        <h2>📚 Books of the Year</h2>
        <ul>
            <li>The Art of Ex-plan-ation: </li>
            <li>Supremacy</li>
            <li>And Then There Were None</li>
            <li>ReWork</li>
            <li>The Code Breaker</li>
        </ul>
    </section>


    <section class="events">
        <h2>🎉 Upcoming Events</h2>
        <p>Stay updated with our latest library events, book fairs, and special programs.</p>
        <button class="btn">View Events</button>
    </section>

    <footer>
        <p>&copy; 2025 The Learning Vault Library | All Rights Reserved</p>
        <p>-:Made By:-</p>
        <p>&copy; Chaudhary Shabbirali haidarali Bca Sem6</p>
    </footer>

    </div>
    </form>
</body>
</html>
