<?php
if(!defined("sugarEntry") || !sugarEntry){
    die("Not a valid entry point");
}

$dictionary["grp_p_groups"]["fields"]["name"]["vname"] = "LBL_NAME";

//Address fields
$dictionary["grp_p_groups"]["fields"]["primary_address_street"]["name"] = "primary_address_street";
$dictionary["grp_p_groups"]["fields"]["primary_address_street"]["vname"] = "LBL_PRIMARY_ADDRESS_STREET";
$dictionary["grp_p_groups"]["fields"]["primary_address_street"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["primary_address_street"]["len"] = "150";
$dictionary["grp_p_groups"]["fields"]["primary_address_street"]["group"] = "primary_address";
$dictionary["grp_p_groups"]["fields"]["primary_address_street"]["comment"] = "Street address for primary address";

$dictionary["grp_p_groups"]["fields"]["primary_address_street_2"]["name"] = "primary_address_street_2";
$dictionary["grp_p_groups"]["fields"]["primary_address_street_2"]["vname"] = "LBL_PRIMARY_ADDRESS_STREET_2";
$dictionary["grp_p_groups"]["fields"]["primary_address_street_2"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["primary_address_street_2"]["len"] = "150";
$dictionary["grp_p_groups"]["fields"]["primary_address_street_2"]["source"] = "non-db";

$dictionary["grp_p_groups"]["fields"]["primary_address_street_3"]["name"] = "primary_address_street_3";
$dictionary["grp_p_groups"]["fields"]["primary_address_street_3"]["vname"] = "LBL_PRIMARY_ADDRESS_STREET_3";
$dictionary["grp_p_groups"]["fields"]["primary_address_street_3"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["primary_address_street_3"]["len"] = "150";
$dictionary["grp_p_groups"]["fields"]["primary_address_street_3"]["source"] = "non-db";

$dictionary["grp_p_groups"]["fields"]["primary_address_city"]["name"] = "primary_address_city";
$dictionary["grp_p_groups"]["fields"]["primary_address_city"]["vname"] = "LBL_PRIMARY_ADDRESS_CITY";
$dictionary["grp_p_groups"]["fields"]["primary_address_city"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["primary_address_city"]["len"] = "100";
$dictionary["grp_p_groups"]["fields"]["primary_address_city"]["group"] = "primary_address";
$dictionary["grp_p_groups"]["fields"]["primary_address_city"]["comment"] = "City for primary address";

$dictionary["grp_p_groups"]["fields"]["primary_address_state"]["name"] = "primary_address_state";
$dictionary["grp_p_groups"]["fields"]["primary_address_state"]["vname"] = "LBL_PRIMARY_ADDRESS_STATE";
$dictionary["grp_p_groups"]["fields"]["primary_address_state"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["primary_address_state"]["len"] = "100";
$dictionary["grp_p_groups"]["fields"]["primary_address_state"]["group"] = "primary_address";
$dictionary["grp_p_groups"]["fields"]["primary_address_state"]["comment"] = "State for primary address";

$dictionary["grp_p_groups"]["fields"]["primary_address_postalcode"]["name"] = "primary_address_postalcode";
$dictionary["grp_p_groups"]["fields"]["primary_address_postalcode"]["vname"] = "LBL_PRIMARY_ADDRESS_POSTALCODE";
$dictionary["grp_p_groups"]["fields"]["primary_address_postalcode"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["primary_address_postalcode"]["len"] = "20";
$dictionary["grp_p_groups"]["fields"]["primary_address_postalcode"]["group"] = "primary_address";
$dictionary["grp_p_groups"]["fields"]["primary_address_postalcode"]["comment"] = "Postal code for primary address";

$dictionary["grp_p_groups"]["fields"]["primary_address_country"]["name"] = "primary_address_country";
$dictionary["grp_p_groups"]["fields"]["primary_address_country"]["vname"] = "LBL_PRIMARY_ADDRESS_COUNTRY";
$dictionary["grp_p_groups"]["fields"]["primary_address_country"]["type"] = "varchar";
$dictionary["grp_p_groups"]["fields"]["primary_address_country"]["group"] = "primary_address";
$dictionary["grp_p_groups"]["fields"]["primary_address_country"]["comment"] = "Country for primary address";
?>

