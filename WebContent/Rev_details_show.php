<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <img class="logo" src="Government_Of_Gujarat_Seal_In_All_Languages.png" alt=" ">
        <h3>Gujarat <br>Government</h3>
        <h1>PARIVAR <br>OLKHAN PATRA <br></h1>
        <nav>
            <ul>
                <li><a href="sign_up.jsp">SIGNUP</a></li>
                <li><a href="aboutUs.jsp">ABOUT</a></li>
            </ul>
        </nav>
        <img class="logo2" src="family-silhouette.png">
    </header>
    <p class="inst">Enter Details To Check Records:</p>
    <div class="show">
        <form action="" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">
            <label for="name">UFN(Unique family number):</label>
            <input type="number" id="UFM" name="UFM">
            <input type="submit" value="Search" class="btn"/>
        </form>
    </div>
    <div class="data">
        <table>
            <tr>
                <th>Name</th>
                <th>UFM</th>
            </tr>
        <!-- </table> -->
    </div>
</body>
</html>


<?php
    if(isset($_POST['name']))
    {
    $servername="localhost";
    $username="root";
    $password="";
    $dbname="ssip";

    $conn=mysqli_connect($servername,$username,$password,$dbname);

    if($conn){
        if(empty($_POST['fname']) || empty($_POST['ufn'])){
            echo '<script type ="text/JavaScript">';  
            echo 'alert("Please Enter valid input")';  
            echo '</script>';
        }
        else{
            $name=$_POST['fname'];
            $ufm=$_POST['ufn'];
            $sql="select * from data where name='$name' and ufn=$ufn";
            $result=mysqli_query($conn,$sql);
            $num=mysqli_num_rows($result);
            if($num>0){
                while($row=mysqli_fetch_assoc($result)){
                    echo "
                    <tr>
                    <td>".$row['fname']."</td>
                    <td>".$row['ufn']."</td>
                    ";
                }
            }
            else{
                echo '<script type ="text/JavaScript">';  
                echo 'alert("Data cannot found")';  
                echo '</script>';
            }
        }   
    }
    else {
        echo "Connection failed ".mysqli_connect_error();
    }
    mysqli_close($conn);
    }
?>

