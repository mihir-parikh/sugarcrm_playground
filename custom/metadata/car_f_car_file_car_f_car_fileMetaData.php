<?php
// created: 2014-10-03 15:53:48
$dictionary["car_f_car_file_car_f_car_file"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'car_f_car_file_car_f_car_file' => 
    array (
      'lhs_module' => 'car_f_car_file',
      'lhs_table' => 'car_f_car_file',
      'lhs_key' => 'id',
      'rhs_module' => 'car_f_car_file',
      'rhs_table' => 'car_f_car_file',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'car_f_car_file_car_f_car_file_c',
      'join_key_lhs' => 'car_f_car_file_car_f_car_filecar_f_car_file_ida',
      'join_key_rhs' => 'car_f_car_file_car_f_car_filecar_f_car_file_idb',
    ),
  ),
  'table' => 'car_f_car_file_car_f_car_file_c',
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
      'name' => 'car_f_car_file_car_f_car_filecar_f_car_file_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'car_f_car_file_car_f_car_filecar_f_car_file_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'car_f_car_file_car_f_car_filespk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'car_f_car_file_car_f_car_file_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'car_f_car_file_car_f_car_filecar_f_car_file_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'car_f_car_file_car_f_car_file_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'car_f_car_file_car_f_car_filecar_f_car_file_idb',
      ),
    ),
  ),
);