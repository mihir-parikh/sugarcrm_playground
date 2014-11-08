<?php

/* 
 * Script to create a contact record using rest api.
 */
include_once '../../custom_config/custom_config.php';
$url = SUGAR_SITE_URL . "service/v4_1/rest.php";
$username = SUGAR_WEBSERVICE_USER;
$password = SUGAR_WEBSERVICE_PASSWORD;

//Function to make cURL request
function call($method, $parameters, $url){
    $ch = curl_init();
    
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 0);
    
    $json_encoded_data = json_encode($parameters);
    
    $post = array(
        "method" => $method,
        "input_type" => "JSON",
        "response_type" => "JSON",
        "rest_data" => $json_encoded_data
    );
    
    curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
    $result = curl_exec($ch);
    curl_close($ch);
    $response = json_decode($result);
    
    return $response;
}

//Log in
$login_parameters = array(
    "user_auth" => array(
        "user_name" => $username,
        "password" => md5($password),
        "version" => "1"
    )
);

$login_result = call("login", $login_parameters, $url);
$session_id = $login_result->id;

//Create a contact
$set_entry_parameters = array(
    "session" => $session_id,
    "module_name" => "Accounts",
    "name_value_list" => array(
        array("name" => "last_name", "value" => "Rest last name"), 
        array("name" => "day_time_contact_c", "value" => "11111111"),
        array("name" => "night_time_contact_c", "value" => "22222222")
    )
);

$set_entry_result = call("set_entry", $set_entry_parameters, $url);

echo "New record created: " . $set_entry_result->id;
?>