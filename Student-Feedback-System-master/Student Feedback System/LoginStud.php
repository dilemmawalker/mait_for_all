<?php

session_start();
$error=''; //Variable to Store error message;
if(isset($_POST['submit'])){
 if(empty($_POST['user']) || empty($_POST['pass'])){
 $error = "Username or Password is Invalid";
 }
 else
 {
 //Define $user and $pass
 $user=$_POST['user'];
 $pass=$_POST['pass'];
 //Establishing Connection with server by passing server_name, user_id and pass as a patameter
 $conn = mysqli_connect("localhost", "root", "");
 //Selecting Database
 $db = mysqli_select_db($conn, "assignmentiit");
 //sql query to fetch information of registerd user and finds user match.
 $query = mysqli_query($conn, "SELECT * FROM student WHERE id='$user' AND password='$pass'");
 
 
 
 
 $rows = mysqli_num_rows($query);
 if($rows == 1){
	 
$_SESSION['user'] = $user;
 header("Location: StudFeedback.php"); // Redirecting to other page
 }
 else
 {
 $error = "Username of Password is Invalid";
 }
 mysqli_close($conn); // Closing connection
 }
}
 


echo '<html>';
echo '<head>';
echo '<title>Login</title>';
echo '<style>';
echo '.login{';
echo 'width:360px;';
echo 'margin:50px auto;';
echo 'font-family:arial; ';
echo 'color: #168DA0;';
echo 'border-radius:10px;';
echo 'border:2px solid #168DA0;';
echo 'padding:12px 40px 25px;';
echo 'margin-top:70px; ';
echo '}';
echo 'input[type=text], ';
echo 'input[type=password]{';
echo 'width:99%;';
echo 'padding:12px;';
echo 'margin-top:8px;';
echo 'border:1px solid #168DA0;';
echo 'padding-left:5px;';
echo 'font-size:16px;';
echo 'font-family:arial; ';
echo '}';
echo 'input[type=submit]{';
echo 'width:100%;';
echo 'background-color:#168DA0;';
echo 'color:#fff;';
echo 'padding:12px;';
echo 'font-size:20px;';
echo 'cursor:pointer;';
echo 'border-radius:5px;';
echo 'margin-bottom:15px; ';
echo '}';
echo '</style>';
echo '</head>';
echo '<body>';
echo '<div class="login">'; 
echo '<h1 align="center">Login</h1>';
echo '<form action="" method="post" style="text-align:center;">';
echo '<input placeholder="Username" type="text"  name="user"><br/><br/>';
echo '<input placeholder="Password" type="password"  name="pass"><br/><br/>';
echo '<input type="submit" value="Login" name="submit">';
echo '<span>';
		echo $error;
echo '</span>';
echo '</body>';
echo '</html>';
?>