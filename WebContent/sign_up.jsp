<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>POP-sign up</title>
    <link rel="stylesheet" href="style1.css" class="css">
    <style>
    	header nav ul li{
    		text-align: center;
    		margin-top: 1.4em;
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
    </style>
</head>

<body>
    <header>
        <img class="logo" src="Government_Of_Gujarat_Seal_In_All_Languages.png" alt=" ">
        <h3>Gujarat <br>Government</h3>
        <!--   <h1>PARIVAR <br>OLKHAN PATRA <br></h1>-->
        <div class="pop_logo">
        	<img src="pop_logo.jpg" >
        </div>
        <nav>
            <ul>
                <li><a href="login.jsp">LOGIN</a></li>
                <li><a href="about.jsp">ABOUT</a></li>
            </ul>
        </nav>
        <img class="logo2" src="family-silhouette.png">
    </header>
    <div class="container">
        <div class="logIn">
            <h1>Sign Up</h1>
            <p>Welcome to <b>Parivar Olkhan Patra</b>! Create your account.</p>
            
            <form action="UserController" method="post">
                <div class="option">
                    <label for="who">WHO IS SIGNING IN?</label><br>
                    <select name="usertype">
                        <option value="gp">Gram Panchayat</option>
                        <option value="rd">Revenue Department</option>
                    </select>
                </div>
                <div class="email">
                    <label for="">EMAIL</label><br>
                    <input type="email" placeholder="hello@reallygreatsite.com" name="email" required/>
                </div>
                <div class="password">
                    <label for="">PASSWORD</label><br>
                    <input type="password" placeholder="******" name="password" required/>
                </div>
                <div class="cpassword">
                    <br>
                    <label for="">CONFIRM PASSWORD</label><br>
                    <input type="password" placeholder="******" name="cpassword" required/>
                </div>
                <button class="login" value="Sign Up" name="action">Submit</button>
            </form>
   
            <p>Already have an account? <a href="login.jsp"><b>LOGIN</b> here.</a></p>
        </div>
        <img class="img" src="flag.png" alt="">
    </div>
</body>

</html>