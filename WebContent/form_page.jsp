<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="form_page.css">
    <title>Home</title>
</head>
<style>
	header nav ul li{
    text-align: center;
    margin-top: .55em;
    display: block;
    color: black;
    background: white;
    font-size: 25px;
    border: 15px solid white;
    border-radius: 120px;
    margin-left: 50px;
    font-family:sans-serif;
    font-weight: bold;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.pop_logo{
    display: flex;
    align-items: center;
    justify-content: center;
    margin-left: 5rem;
}
</style>
<body>
    <header>
        <img class="logo" src="Government_Of_Gujarat_Seal_In_All_Languages.png" alt=" ">
        <h3>Gujarat <br>Government</h3>
        <div class="pop_logo">
        	<img src="pop_logo.jpg" >
        </div>
        <nav>
            <ul>
                <li><a href="signup.jsp">SIGNUP</a></li>
                <li><a href="aboutUs.jsp">ABOUT</a></li>
                <li><a href="gp_home.jsp">HOME</a></li>
            </ul>
        </nav>
        <img class="logo2" src="family-silhouette.png">
    </header>
    <div class="main">
        <form action="DataController" method="post" enctype="multipart/form-data">
            <div class="form">
                <label for="name">Name:</label>
                <label for="fname">UFN(Unique Family Number):</label>
                <input type="text" id="name" name="name">
                <input type="text" id="UFM" name="ufn">
                <label for="fname">Father's name:</label>
                <label for="start">Mobile Number:</label>
                <input type="text" id="fname" name="fname">
                <input type="tel" name="mobile" maxlength="10" minlength="10" pattern="[1-9]{1}[0-9]{9}">
                <label for="name">Upload Certificate:</label>
                <label for="name">Aadhar-card number:</label>
                <input type="file" id="Upload" name="birth_certi">
                <input type="text" id="Anumber" name="aadhar_no">
            </div>
            <div class="submit">
                <input type="submit" value="Submit" name="action"/>
            </div>
        </form>
    </div>
    
    <img src="flag.png" alt="" class="footer_img2">
</body>
</html>