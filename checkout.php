<?php
    $checkoutName = $_POST['checkoutName'];
    $checkoutLastname = $_POST['checkoutLastname'];
    $checkoutCompany = $_POST['checkoutCompany'];
    $checkoutCountry = $_POST['checkoutCountry'];
    $checkoutAddress = $_POST['checkoutAddress'];
    $checkoutZipcode = $_POST['checkoutZipcode'];
    $checkoutCity = $_POST['checkoutCity'];
    $checkoutPhone = $_POST['checkoutPhone'];
    $checkoutEmail = $_POST['checkoutEmail'];

    
    //Database connection
    $conn = new mysqli('localhost','root','','test');
    if($conn->connect_error){
        die('Connection Failed : '.$conn->connect_error);
    }else{
        $stmt = $conn->prepare("insert into checkout(checkoutName,checkoutLastname,checkoutCompany,checkoutCountry,checkoutAddress,checkoutZipcode,checkoutCity,checkoutPhone,checkoutEmail) values(?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt ->bind_param("sssssisis",$checkoutName,$checkoutLastname,$checkoutCompany,$checkoutCountry,$checkoutAddress,$checkoutZipcode,$checkoutCity,$checkoutPhone,$checkoutEmail);
        $stmt->execute();
        header("Location: succes.html");
        $stmt->close();
        $conn->close();
    }
?>