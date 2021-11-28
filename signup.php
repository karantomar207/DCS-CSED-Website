<?php
$registration=$_POST['registration'];
$firstname= $_POST['firstname'];
$lastname= $_POST['lastname'];
$username=$_POST['username'];
$pass=$_POST['password'];
$cpass=$_POST['cnfrmpassword'];
$contact=$_POST['contact'];
$course=$_POST['course'];
$section=$_POST['section'];
$year=$_POST['year'];
$photo=$_POST['pic'];

if(isset($_POST['signup']))
{
    
    $con=mysqli_connect('localhost','root','','dcswebsite1');
    if(!$con)
    {
        echo "you are not connect to the server";
    }
    
    $sql="INSERT INTO credentials(registration, Firstname, Lastname, username, password, confirmpassword, contact, course, section, year, photo) VALUES ('$registration','$firstname','$lastname','$username','$pass','$cpass','$contact','$course','$section','$year','$photo')";
    if(mysqli_query($con,$sql))
    {
        echo "<script> location.href='index.html'</script>";
       
    }
    echo "<script> location.href='index.html'</script>";
}

if(isset($_POST['button']))
{
$con=mysqli_connect('localhost','root','','dcswebsite1');
    if(!$con)
    {
        echo "you are not connect to the server";
    }
    $sql="SELECT username,password FROM credentials";
    $result=mysqli_query($con,$sql);
    if(mysqli_num_rows($result)>0){
        $row=mysqli_fetch_array($result);
        $name=$row['username'];
        $pass=$row['password'];
    }
    else{
        echo "No login found";
    }

session_start();
if(isset($_SESSION['email']))
{
    echo "<h1 align = right> Welcome,".$_SESSION['email']."</h1>";
    echo "<br> <a href ='index.html'><input type= button name= logout value=logout></a>";
}
else
{
    if($name==$_POST['email']  && $pass== $_POST['pass'])
    {
        $_SESSION['uname']=$name;
        echo "<script> location.href='index.html'</script>";
    }
    else
    {
        echo "<script>alert('Invalid username and password')</script>";
        echo "<script>location.href ='index.html'</script>";
    }
}
}
?>