<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usercard.aspx.cs" Inherits="library_management1.Usercard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Card</title>
      <style>

body {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 20px;
    text-align: center;
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

.search-container {
    background-color: white;
    padding: 20px;
    width: 400px;
    margin: 20px auto;
    border-radius: 8px;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
}

.search-container label {
    font-size: 16px;
    font-weight: bold;
}

.search-container input {
    width: 100%;
    padding: 8px;
    margin-top: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
}


.search-container button, 
#btnPrint {
    margin-top: 10px;
    padding: 10px 15px;
    font-size: 16px;
    background-color: #007bff;
    color: white;
    border: none;
    cursor: pointer;
    border-radius: 5px;
}

.search-container button:hover,
#btnPrint:hover {
    background-color: #0056b3;
}


#card {
    display: none;
    border: 2px solid black;
    padding: 20px;
    width: 400px;
    background-color: white;
    margin: 20px auto;
    text-align: center;
    font-family: Arial, sans-serif;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    border-radius: 10px;
}

#card h3 {
    margin-bottom: 10px;
    color: #333;
}

#card p {
    font-size: 16px;
    margin: 5px 0;
}

.barcode img {
    margin-top: 10px;
    width: 250px;
    height: 80px;
}

#btnPrint {
    display: block;
    margin: 20px auto;
}

@media print {
    body * {
        visibility: hidden;
    }

    #card, #card * {
        visibility: visible;
    }

    #card {
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        box-shadow: none;
    }

    #btnPrint {
        display: none;
    }
}

    </style>
    <script type="text/javascript">
        function showCard() {
            document.getElementById("card").style.display = "block";
        }

        function hideCard() {
            document.getElementById("card").style.display = "none";
        }
</script>
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
   <div class="search-container">
  
            <label for="txtLibraryID">Enter Library ID:</label>
            <asp:TextBox ID="txtLibraryID" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        </div>

       <div id="card" style="display: none; border: 2px solid black; padding: 20px; width: 400px;">
    <h3>User Library Card</h3>
    <p><strong>Name:</strong> <asp:Label ID="lblName" runat="server" /></p>
    <p><strong>Library ID:</strong> <asp:Label ID="lblLibraryID" runat="server" /></p>
    <p><strong>Valid Till:</strong> <asp:Label ID="lblValidTill" runat="server" /></p>
    <div class="barcode">
        <asp:Image ID="imgBarcode" runat="server" ImageUrl="~/IMG/Barcode.webp" Width="300px" Height="100px" />
    </div>
</div>

        <br />
        <asp:Button ID="btnPrint" runat="server" Text="Print Card" OnClientClick="window.print(); return false;" />
    </form>
</body>
</html>
