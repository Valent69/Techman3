<?php
    $email = $_POST['email'];
    
    //Database connection
    $conn = new mysqli('localhost','root','','test');
    if($conn->connect_error){
        die('Connection Failed : '.$conn->connect_error);
    }else{
        $stmt = $conn->prepare("insert into newslatter(email) values(?)");
        $stmt ->bind_param("s",$email);
        $stmt->execute();
        header("Location: succes.html");
        $stmt->close();
        $conn->close();
    }
?>