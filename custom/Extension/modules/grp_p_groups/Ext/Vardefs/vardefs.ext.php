<?php
if(!defined("sugarEntry") || !sugarEntry){
    die("Not a valid entry point");
}

$dictionary["grp_p_groups"]["fields"]["name"]["vname"] = "LBL_NAME";

//Address fields
$dictionary["grp_p_groups"]["fields"]["group_address_street"]["name"] = "group_address_street";
$dictionary["grp_p_groups"]["fields"]["group_address_street"]["vname"] = "LBL_GROUP_ADDRESS_STREET";
$dictionary["grp_p_groups"]["fields"]["group_address_street"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["group_address_street"]["len"] = "150";
$dictionary["grp_p_groups"]["fields"]["group_address_street"]["group"] = "group_address";
$dictionary["grp_p_groups"]["fields"]["group_address_street"]["comment"] = "Street address for group address";

$dictionary["grp_p_groups"]["fields"]["group_address_street_2"]["name"] = "group_address_street_2";
$dictionary["grp_p_groups"]["fields"]["group_address_street_2"]["vname"] = "LBL_GROUP_ADDRESS_STREET_2";
$dictionary["grp_p_groups"]["fields"]["group_address_street_2"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["group_address_street_2"]["len"] = "150";
$dictionary["grp_p_groups"]["fields"]["group_address_street_2"]["source"] = "non-db";

$dictionary["grp_p_groups"]["fields"]["group_address_street_3"]["name"] = "group_address_street_3";
$dictionary["grp_p_groups"]["fields"]["group_address_street_3"]["vname"] = "LBL_GROUP_ADDRESS_STREET_3";
$dictionary["grp_p_groups"]["fields"]["group_address_street_3"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["group_address_street_3"]["len"] = "150";
$dictionary["grp_p_groups"]["fields"]["group_address_street_3"]["source"] = "non-db";

$dictionary["grp_p_groups"]["fields"]["group_address_city"]["name"] = "group_address_city";
$dictionary["grp_p_groups"]["fields"]["group_address_city"]["vname"] = "LBL_GROUP_ADDRESS_CITY";
$dictionary["grp_p_groups"]["fields"]["group_address_city"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["group_address_city"]["len"] = "100";
$dictionary["grp_p_groups"]["fields"]["group_address_city"]["group"] = "group_address";
$dictionary["grp_p_groups"]["fields"]["group_address_city"]["comment"] = "City for group address";

$dictionary["grp_p_groups"]["fields"]["group_address_state"]["name"] = "group_address_state";
$dictionary["grp_p_groups"]["fields"]["group_address_state"]["vname"] = "LBL_GROUP_ADDRESS_STATE";
$dictionary["grp_p_groups"]["fields"]["group_address_state"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["group_address_state"]["len"] = "100";
$dictionary["grp_p_groups"]["fields"]["group_address_state"]["group"] = "group_address";
$dictionary["grp_p_groups"]["fields"]["group_address_state"]["comment"] = "State for group address";

$dictionary["grp_p_groups"]["fields"]["group_address_postalcode"]["name"] = "group_address_postalcode";
$dictionary["grp_p_groups"]["fields"]["group_address_postalcode"]["vname"] = "LBL_GROUP_ADDRESS_POSTALCODE";
$dictionary["grp_p_groups"]["fields"]["group_address_postalcode"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["group_address_postalcode"]["len"] = "20";
$dictionary["grp_p_groups"]["fields"]["group_address_postalcode"]["group"] = "group_address";
$dictionary["grp_p_groups"]["fields"]["group_address_postalcode"]["comment"] = "Postal code for group address";

$dictionary["grp_p_groups"]["fields"]["group_address_country"]["name"] = "group_address_country";
$dictionary["grp_p_groups"]["fields"]["group_address_country"]["vname"] = "LBL_GROUP_ADDRESS_COUNTRY";
$dictionary["grp_p_groups"]["fields"]["group_address_country"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["group_address_country"]["group"] = "group_address";
$dictionary["grp_p_groups"]["fields"]["group_address_country"]["comment"] = "Country for group address";

$dictionary["grp_p_groups"]["fields"]["phone_group"]["name"] = "phone_group";
$dictionary["grp_p_groups"]["fields"]["phone_group"]["vname"] = "LBL_GROUP_PHONE";
$dictionary["grp_p_groups"]["fields"]["phone_group"]["type"] = "phone";
$dictionary["grp_p_groups"]["fields"]["phone_group"]["dbType"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["phone_group"]["len"] = "100";
$dictionary["grp_p_groups"]["fields"]["phone_group"]["audited"] = "true";
$dictionary["grp_p_groups"]["fields"]["phone_group"]["comment"] = 'Group phone number';

$dictionary["grp_p_groups"]["fields"]["group_phone_extension"]["name"] = "group_phone_extension";
$dictionary["grp_p_groups"]["fields"]["group_phone_extension"]["vname"] = "LBL_GROUP_PHONE_EXTENSION";
$dictionary["grp_p_groups"]["fields"]["group_phone_extension"]["type"] = "phone";
$dictionary["grp_p_groups"]["fields"]["group_phone_extension"]["dbType"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["group_phone_extension"]["len"] = "100";
$dictionary["grp_p_groups"]["fields"]["group_phone_extension"]["audited"] = "true";
$dictionary["grp_p_groups"]["fields"]["group_phone_extension"]["comment"] = 'Group phone number extension';
?>