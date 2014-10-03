<?php
// created: 2014-10-03 15:53:48
$dictionary["car_f_car_file"]["fields"]["car_f_car_file_car_f_car_file"] = array (
  'name' => 'car_f_car_file_car_f_car_file',
  'type' => 'link',
  'relationship' => 'car_f_car_file_car_f_car_file',
  'source' => 'non-db',
  'module' => 'car_f_car_file',
  'bean_name' => false,
  'vname' => 'LBL_CAR_F_CAR_FILE_CAR_F_CAR_FILE_FROM_CAR_F_CAR_FILE_L_TITLE',
  'id_name' => 'car_f_car_file_car_f_car_filecar_f_car_file_ida',
);
$dictionary["car_f_car_file"]["fields"]["car_f_car_file_car_f_car_file_name"] = array (
  'name' => 'car_f_car_file_car_f_car_file_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CAR_F_CAR_FILE_CAR_F_CAR_FILE_FROM_CAR_F_CAR_FILE_L_TITLE',
  'save' => true,
  'id_name' => 'car_f_car_file_car_f_car_filecar_f_car_file_ida',
  'link' => 'car_f_car_file_car_f_car_file',
  'table' => 'car_f_car_file',
  'module' => 'car_f_car_file',
  'rname' => 'document_name',
);
$dictionary["car_f_car_file"]["fields"]["car_f_car_file_car_f_car_filecar_f_car_file_ida"] = array (
  'name' => 'car_f_car_file_car_f_car_filecar_f_car_file_ida',
  'type' => 'link',
  'relationship' => 'car_f_car_file_car_f_car_file',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_CAR_F_CAR_FILE_CAR_F_CAR_FILE_FROM_CAR_F_CAR_FILE_R_TITLE',
);
