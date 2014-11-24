<?php

/**
 * Script to retrieve a list of modules available to the logged in user.
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

//Retrieve a list of modules available to the logged in user
$get_available_modules_parameters = array(
    "session" => $session_id
);

$get_available_modules_result = $generic_webservice->call("get_available_modules", $get_available_modules_parameters, $url);

echo "List of modules available: <br />";
echo "<pre>";
print_r($get_available_modules_result);
echo "</pre>";