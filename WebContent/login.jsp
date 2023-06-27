<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>POP-log in</title>
    <link rel="stylesheet" href="Login.css" class="css">
</head>
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
        	<img src="pop_logo.png" >
        </div>
        <nav>
            <ul>
                <li><a href="sign_up.jsp">SIGNUP</a></li>
                <li><a href="aboutUs.jsp">ABOUT</a></li>
            </ul>
        </nav>
        <img class="logo2" src="family-silhouette.png">
    </header>
    <div class="container">
        <div class="logIn">
            <h1>Login</h1>
            <p>Welcome back! Login with your credentials.</p>
            <%
                  	if(request.getAttribute("msg")!=null)
                  	{
                  		out.println(request.getAttribute("msg"));
                  	}
             %>
            <form action="UserController" method="post">
                <div class="email">
                    <label for="">EMAIL</label><br>
                    <input type="email" placeholder="hello@reallygreatsite.com" name="email" required/>
                </div>
                <div class="password">
                    <label for="">PASSWORD</label><br>
                    <input type="password" placeholder="******" name="password" required/>
                </div>
                <button class="login" name="action" value="Log In">Login</button>
            </form>
            
            <p>Not registered yet? <a href="sign_up.jsp"><b>SIGN UP</b> here.</a></p>
        </div>
        <img class="img" src="flag.png" alt="">
    </div>
</body>

</html>