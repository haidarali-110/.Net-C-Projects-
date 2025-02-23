<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Explore.aspx.cs" Inherits="library_management1.Explore" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Explore Books</title>
    <style>
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
     /* Reset Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Full Page Layout */
body, html {
    height: 100%;
    width: 100%;
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    
}

/* Explore Books Section */
.explore-books {
    min-height: 100vh; /* Ensure full height */
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 20px;
}

/* Title */
.explore-books h1 {
    font-size: 36px;
    margin-bottom: 20px;
    color: #333;
      background: rgba(0, 0, 0, 0.5); 
      padding: 10px 20px;
   
    border:2px;
}

/* Books Grid */
.books-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 10px;
    width: 100%;
    height: auto; /* Adjusts dynamically */
    padding: 10px;
}

/* Book Cards */
.book {
    width: 100%;
    height: 400px; /* Fixed height to maintain aspect ratio */
    overflow: hidden;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 5px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
}

/* Book Images */
.book img {
    width: 100%;
    height: 100%;
   
    transition: transform 0.3s ease-in-out;
}

/* Hover Effect */
.book:hover img {
    transform: scale(1.05);
}

/* Responsive Adjustments */
@media (max-width: 1024px) {
    .books-container {
        grid-template-columns: repeat(3, 1fr);
    }
}

@media (max-width: 768px) {
    .books-container {
        grid-template-columns: repeat(2, 1fr);
    }
}

@media (max-width: 480px) {
    .books-container {
        grid-template-columns: 1fr;
    }
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
           <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="logo">📚 The Learning Vault Library</div>
        <ul class="nav-links">
            <li><a href="Home.aspx">Home</a></li>
           <%-- <li><a href="#">Register</a></li>--%>
            <li><a href="Admin.aspx">Admin</a></li>
           <%-- <li><a href="#">Books</a></li>--%>
            <li><a href="#">User ID</a></li>
        </ul>
    </nav>
  
      <section class="explore-books">
        <h1>Explore Books</h1>
        <div class="books-container">
            <div class="book">
                <img src="IMG/Book1.jpg" alt="Book 1">
            </div>
            <div class="book">
                <img src="IMG/Book2.jpg" alt="Book 2">
            </div>
            <div class="book">
                <img src="IMG/Book3.jpg" alt="Book 3">
            </div>
            <div class="book">
                <img src="IMG/Book4.jpg" alt="Book 4">
            </div>
            <div class="book">
                <img src="IMG/Book5.jpg" alt="Book 5">
            </div>
            <div class="book">
                <img src="IMG/Book6.jpg" alt="Book 6">
            </div>
            <div class="book">
                <img src="IMG/Book7.jpg" alt="Book 7">
            </div>
            <div class="book">
                <img src="IMG/Book8.jpg" alt="Book 8">
            </div>
           
        </div>
    </section>
    </div>
    </form>
</body>
</html>
