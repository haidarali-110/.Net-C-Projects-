<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="print_download.aspx.cs" Inherits="Online_Admission_Management.print_download" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <style>
       body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
}

.admission-form {
    max-width: 750px;
    margin: 20px auto;
    padding: 20px;
    border: 1px solid #ccc;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.college-logo {
    max-width: 100%;
    height: 150px;
}

h2 {
    color: #333;
}

.form-field {
    margin-bottom: 15px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

span {
    display: inline-block;
    border-bottom: 1px solid #ccc;
    padding-bottom: 3px;
}

.note {
    margin-top: 20px;
    color: #777;
    font-style:italic;
}

 .BackToHome {
        margin-top: 50px;
        margin-left:650px;
       
    }

    #BtnBack {
        background-color: #dc3545;
    color: #fff;
    padding: 10px 15px;
    cursor: pointer;
    font-size: 16px;
    border-radius: 25px;
    box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
    }
     @media print {
        /* Hide the buttons and back button when printing */
        .admission-form button,
        .BackToHome {
            display: none;
        }
    }

        </style>
    
</head>
<body>
    <form id="form1" runat="server">
   
    <div class="admission-form">
        <img class="college-logo" src="https://golearnershub.com/wp-content/uploads/2021/03/How-to-Apply-For-College-of-Education-2021-Admission-1.jpg" alt="College Logo">
        <h2>Admission Form</h2>

        <!-- Fields -->
        <div class="form-field">
            <label>FULL NAME:</label>
            <span><%= Session["FullName"] %></span>
        </div>

        <div class="form-field">
            <label>ADDRESS:</label>
            <span><%= Session["Address"] %></span>
        </div>

        <div class="form-field">
            <label>MOBILE NUMBER:</label>
            <span><%= Session["Mo_Number"] %></span>
        </div>

        <div class="form-field">
            <label>EMAIL:</label>
            <span><%= Session["Email"] %></span>
        </div>

        <div class="form-field">
            <label>BIRTH DATE:</label>
            <span><%= Session["Birth_Date"] %></span>
        </div>

        <div class="form-field">
            <label>GENDER:</label>
            <span><%= Session["Geender"] %></span>
        </div>

        <div class="form-field">
            <label>CATEGORY:</label>
            <span><%= Session["Category"] %></span>
        </div>

        <div class="form-field">
            <label>COURSE:</label>
            <span><%= Session["Course"] %></span>
        </div>

        <div class="form-field">
            <label>PASSING MONTH & YEAR:</label>
            <span><%= Session["Passing_M_Y"] %></span>
        </div>

        <div class="form-field">
            <label>SEAT NO.:</label>
            <span><%= Session["SeatNo"] %></span>
        </div>

        <div class="form-field">
            <label>OBTAIN MARK/OUT OF MARKS:</label>
            <span><%= Session["Marks"] %></span>
        </div>

        <div class="form-field">
            <label>PERCENTAGE:</label>
            <span><%= Session["Percentage"] %> %</span>
        </div>

        <div class="note">
            Note: Print your form and submit it to the Principal's Office when the college starts.
        </div>
         <button onclick="printAdmissionForm()">Print</button>
   
   

    <script type="text/javascript">
        function printAdmissionForm() {
          
            window.print();
        }


</script>

    </div>

      <div class="BackToHome">

        <asp:Button ID="BtnBack" runat="server" Text="Back To Home" 
            onclick="BtnBack_Click" />

        
    </div>
   
    </form>
   
</body>
</html>
