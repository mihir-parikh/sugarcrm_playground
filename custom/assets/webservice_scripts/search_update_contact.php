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

//Edit the address
$set_entry_parameters = array(
    "session" => $session_id, 
    "module_name" => "Contacts", 
    "name_value_list" => array(
        array(
            "name" => "id", 
            "value" => $contact_id
        ), 
        array(
            "name" => "primary_address_street", 
            "value" => "Street"
        ), 
        array(
            "name" => "primary_address_city", 
            "value" => "City"
        ), 
        array(
            "name" => "primary_address_state", 
            "value" => "State"
        ),
        array(
            "name" => "primary_address_postalcode", 
            "value" => "0000"
        ),
        array(
            "name" => "primary_address_country", 
            "value" => "Country"
        )
    )
);

$set_entry_result = $generic_webservice->call("set_entry", $set_entry_parameters, $url);
echo "Contact address has been successfully updated.";
?>