<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="death_form.css">
    <title>Home</title>
</head>
<body>
    <header>
        <img class="logo" src="Government_Of_Gujarat_Seal_In_All_Languages.png" alt=" ">
        <h3>Gujarat <br>Government</h3>
        <div class="pop_logo">
        	<img src="pop_logo.jpg" >
        </div>
        <nav>
            <ul>
                <li><a href="logout.jsp">LOGOUT</a></li>
                <li><a href="aboutUs.jsp">ABOUT</a></li>
                <li><a href="rev_show_details.jsp">SEARCH</a></li>
            </ul>
        </nav>
        <img class="logo2" src="family-silhouette.png">
    </header>
    <div class="main">
        <form action="DataController" method="post" enctype="multipart/form-data">
            <div class="form">
                <label for="name">Name:</label>
                <label for="fname">UFN(Unique family number):</label>
                <input type="text" id="name" name="name">
                <input type="number" id="UFM" name="ufn">
                <label for="fname">Father's name:</label>
                <label for="name">Upload Death Certificate:</label>
                <input type="text" id="fname" name="fname">
                <input type="file" id="Upload" name="death_certi">
            </div>
            <div class="submit">
                <input type="submit" value="Update" name="action"/>
            </div>
        </form>
    </div>
    <img src="flag.png" alt="" class="footer_img2">
</body>
</html>