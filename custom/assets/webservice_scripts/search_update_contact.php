<?php

/* 
 * A script to search a contact and update its address.
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

$get_entry_list_parameters = array(
    "session" => $session_id, 
    "module_name" => "Contacts", 
    "query" => "contacts.last_name = 'name2'"
);

$get_entry_result = $generic_webservice->call("get_entry_list", $get_entry_list_parameters, $url);
$contact_id = $get_entry_result->entry_list[0]->id;
