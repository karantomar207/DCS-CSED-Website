<?php
$supportname=$_POST['fullnamee'];
$supportroll=$_POST['universityroll'];
$supportemail=$_POST['mail'];
$supportcomments=$_POST['commen'];


if(isset($_POST['support']))
{
    $con=mysqli_connect('localhost','root','','dcswebsite1');
    if(!$con)
    {
        echo "you are not connect to the server";
    }
    $sql="INSERT INTO supportinput(username,universityroll,mail,commentgiven) VALUES ('$supportname','$supportroll','$supportemail','$supportcomments')";
    if(mysqli_query($con,$sql))
    {
        echo "<script> location.href='index.html'</script>";
    }

}
?>