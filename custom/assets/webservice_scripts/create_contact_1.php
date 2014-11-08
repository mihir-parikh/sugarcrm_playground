<?php

/* 
 * Script to create a contact record using rest api.
 */
include_once 'GenericWebService.php';
$generic_webservice = new GenericWebService();

include_once '../../custom_config/custom_config.php';
$url = SUGAR_SITE_URL . "service/v4_1/rest.php";
$username = SUGAR_WEBSERVICE_USER;
$password = SUGAR_WEBSERVICE_PASSWORD;

//Log in
$login_parameters = array(
    "user_auth" => array(
        "user_name" => $username,
        "password" => md5($password),
        "version" => "1"
    )
);

$login_result = $generic_webservice->call("login", $login_parameters, $url);
$session_id = $login_result->id;

//Create a contact
$set_entry_parameters = array(
    "session" => $session_id,
    "module_name" => "Contacts",
    "name_value_list" => array(
        array("name" => "last_name", "value" => "Rest last name"), 
        array("name" => "day_time_contact_c", "value" => "11111111"),
        array("name" => "night_time_contact_c", "value" => "22222222")
    )
);

$set_entry_result = $generic_webservice->call("set_entry", $set_entry_parameters, $url);

echo "New record created: " . $set_entry_result->id;
?>