<?php
$firstname1= $_POST['firstname1'];
$lastname1= $_POST['lastname1'];
$username1=$_POST['username1'];
$city=$_POST['city1'];
$state=$_POST['select'];
$zipcode=$_POST['zip'];
$vichar=$_POST['comments'];

if(isset($_POST['contact']))
{
    $con=mysqli_connect('localhost','root','','dcswebsite1');
    if(!$con)
    {
        echo "you are not connect to the server";
    }
    $sql2="INSERT INTO userinput(Firstname, Lastname, Username, State, zipcode, city, ideas) VALUES ('$firstname1','$lastname1','$username1','$state','$zipcode','$city','$vichar')";
    
    if(mysqli_query($con,$sql2))
    {
        header("location:index.html");
    }
    echo "<script> location.href='index.html'</script>";
}
?>