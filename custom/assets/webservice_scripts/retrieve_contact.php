<?php

/* 
 * Script to retrieve a contact record using rest api.
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

//Retrieve a record
$get_entry_parameters = array(
    "session" => $session_id,
    "module_name" => "Contacts",
    "id" => "9a885c27-c3be-d8c5-b268-545da3c883f2",
    "select_fields" => array(),
    "link_name_to_fields_array" => array(), 
    "track_view" => 1
);

$get_entry_result = $generic_webservice->call("get_entry", $get_entry_parameters, $url);

echo "Retrieved Contacts record: <br />";
echo "<pre>";
print_r($get_entry_result);
echo "</pre>";
?>