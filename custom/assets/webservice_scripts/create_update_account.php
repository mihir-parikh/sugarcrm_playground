<?php

/* 
 * A script to create and update an account
 */
include_once './GenericWebService.php';
$generic_webservice = new GenericWebService();

include_once '../../custom_config/custom_config.php';
$url = SUGAR_SITE_URL . "service/v4_1/rest.php";
$username = SUGAR_WEBSERVICE_USER;
$password = SUGAR_WEBSERVICE_PASSWORD;

$login_parameters = array(
    "user_auth" => array(
        "user_name" => $username, 
        "password" => md5($password), 
        "version" => "1"
    )
);

$login_result = $generic_webservice->call("login", $login_parameters, $url);
$session_id = $login_result->id;

$set_entry_parameters = array(
    "session" => $session_id, 
    "module_name" => "Accounts", 
    "name_value_list" => array(
        array(
            "name" => "name", 
            "value" => "account_1125x"
        )
    )
);

$set_entry_result = $generic_webservice->call("set_entry", $set_entry_parameters, $url);
$account_id = $set_entry_result->id;

$update_account_parameters = array(
    "session" => $session_id, 
    "module_name" => "Accounts", 
    "name_value_list" => array(
        array(
            "name" => "id", 
            "value" => $account_id
        ), 
        array(
            "name" => "name", 
            "value" => "account_1125y"
        )
    )
);

$update_account_result = $generic_webservice->call("set_entry", $update_account_parameters, $url);
echo "The updated organisation name is: " . $update_account_result->entry_list->name->value;
?>

