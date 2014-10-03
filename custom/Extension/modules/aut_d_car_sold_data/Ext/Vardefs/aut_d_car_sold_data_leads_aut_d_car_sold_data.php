<?php
// created: 2014-10-03 15:19:44
$dictionary["aut_d_car_sold_data"]["fields"]["aut_d_car_sold_data_leads"] = array (
  'name' => 'aut_d_car_sold_data_leads',
  'type' => 'link',
  'relationship' => 'aut_d_car_sold_data_leads',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_AUT_D_CAR_SOLD_DATA_LEADS_FROM_LEADS_TITLE',
  'id_name' => 'aut_d_car_sold_data_leadsleads_ida',
);
$dictionary["aut_d_car_sold_data"]["fields"]["aut_d_car_sold_data_leads_name"] = array (
  'name' => 'aut_d_car_sold_data_leads_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AUT_D_CAR_SOLD_DATA_LEADS_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'aut_d_car_sold_data_leadsleads_ida',
  'link' => 'aut_d_car_sold_data_leads',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["aut_d_car_sold_data"]["fields"]["aut_d_car_sold_data_leadsleads_ida"] = array (
  'name' => 'aut_d_car_sold_data_leadsleads_ida',
  'type' => 'link',
  'relationship' => 'aut_d_car_sold_data_leads',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AUT_D_CAR_SOLD_DATA_LEADS_FROM_AUT_D_CAR_SOLD_DATA_TITLE',
);
