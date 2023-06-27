<%@page import="java.util.List"%>
<%@page import="com.bean.Data"%>
<%@page import="com.dao.DataDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Rev_details_show.css">
    <title>Document</title>
</head>
<body>
    <header>
        <img class="logo" src="Government_Of_Gujarat_Seal_In_All_Languages.png" alt=" ">
        <h3>Gujarat <br>Government</h3>
        <h1>PARIVAR <br>OLKHAN PATRA <br></h1>
        <nav>
            <ul>
                <li><a href="logout.jsp">LOGOUT</a></li>
                <li><a href="aboutUs.jsp">ABOUT</a></li>
                <li><a href="Rev_home.jsp">HOME</a></li>
            </ul>
        </nav>
        <img class="logo2" src="family-silhouette.png">
    </header>
    
   
    <p class="inst">Enter Details To Check Records:</p>
    <div class="show">
    <form action="DataController" method="post">
        <label for="">Name:</label>
        <input type="text" id="name" name="fname">
        <label for="name">UFN:</label>
        <input type="text" id="UFM" name="ufn" >
        <button class="btn" name="action" value="Search">Search</button>
    </form> 
	</div>
	
	<br/>
	<br/>
	
	
    <div align="center"> 
    <table border=1px>
    <thead>
    	<tr>
      		<th>Name</th>
    		<th>Time</th>
    	</tr>
    </thead>
    <tbody>
    	<c:forEach items="${name}" var="data">
    	<tr>
    		<td>${data.name}</td>
    		<td>${data.time}</td>
    	</tr>
		</c:forEach>
	</tbody>
	</table>   
	</div> 	
    
</body>
</html>