<?php
// created: 2014-10-03 15:19:44
$dictionary["aut_d_car_sold_data_leads"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'aut_d_car_sold_data_leads' => 
    array (
      'lhs_module' => 'Leads',
      'lhs_table' => 'leads',
      'lhs_key' => 'id',
      'rhs_module' => 'aut_d_car_sold_data',
      'rhs_table' => 'aut_d_car_sold_data',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'aut_d_car_sold_data_leads_c',
      'join_key_lhs' => 'aut_d_car_sold_data_leadsleads_ida',
      'join_key_rhs' => 'aut_d_car_sold_data_leadsaut_d_car_sold_data_idb',
    ),
  ),
  'table' => 'aut_d_car_sold_data_leads_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'aut_d_car_sold_data_leadsleads_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'aut_d_car_sold_data_leadsaut_d_car_sold_data_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'aut_d_car_sold_data_leadsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'aut_d_car_sold_data_leads_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'aut_d_car_sold_data_leadsleads_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'aut_d_car_sold_data_leads_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'aut_d_car_sold_data_leadsaut_d_car_sold_data_idb',
      ),
    ),
  ),
);