<?php
    $checkoutName = $_POST['checkoutName'];
    $checkout_last_name = $_POST['checkout_last_name'];
    $checkout_company = $_POST['checkout_company'];
    $checkout_country = $_POST['checkout_country'];
    $checkout_address = $_POST['checkout_address'];
    $checkout_zipcode = $_POST['checkout_zipcode'];
    $checkout_city = $_POST['checkout_city'];
    $checkout_province = $_POST['checkout_province'];
    $checkout_phone = $_POST['checkout_phone'];
    $checkout_email = $_POST['checkout_email'];

    
    //Database connection
    $conn = new mysqli('localhost','root','','test1');
    if($conn->connect_error){
        die('Connection Failed : '.$conn->connect_error);
    }else{
        $stmt = $conn->prepare("insert into checkout(checkoutName,checkout_last_name,checkout_company,checkout_country,checkout_address,checkout_zipcode,checkout_city,checkout_province,checkout_phone,checkout_email) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?,)");
        $stmt ->bind_param("sssssissis",$checkoutName,$checkout_last_name,$checkout_company,$checkout_country,$checkout_address,$checkout_zipcode,$checkout_city,$checkout_province,$checkout_phone,$checkout_email);
        $stmt->execute();
        echo "Cu Success!";
        $stmt->close();
        $conn->close();
    }
?>