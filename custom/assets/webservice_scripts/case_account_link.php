<?php

/* 
 * Script to link case and account records using rest api.
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

//Create an Account
$set_entry_parameters = array(
    "session" => $session_id,
    "module_name" => "Accounts",
    "name_value_list" => array(
        array("name" => "name", "value" => "Rest account")        
    )
);

$set_entry_result = $generic_webservice->call("set_entry", $set_entry_parameters, $url);

echo "New account record created: " . $set_entry_result->id . "<br /><br />";

//Create a Case
$case_set_entry_parameters = array(
    "session" => $session_id,
    "module_name" => "Cases",
    "name_value_list" => array(
        array("name" => "account_id", "value" => $set_entry_result->id), 
        array("name" => "name", "value" => "case2")
    )
);

$case_set_entry_result = $generic_webservice->call("set_entry", $case_set_entry_parameters, $url);

echo "New case record created: " . $case_set_entry_result->id . "<br /><br />";

//Create a relationship between account and case
$set_relationship_parameters = array(
    "session" => $session_id,
    "module_name" => "Accounts",
    "module_id" => $set_entry_result->id, 
    "link_field_name" => "cases", 
    "related_ids" => array($case_set_entry_result->id), 
    "name_value_list" => array(),
    "delete" => 0
);

$set_relationship_result = $generic_webservice->call("set_relationship", $set_relationship_parameters, $url);

echo "The result of relationship creation is: " . $set_relationship_result->created;
?>