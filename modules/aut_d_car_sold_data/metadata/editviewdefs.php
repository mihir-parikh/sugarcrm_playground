<?php
$module_name = 'aut_d_car_sold_data';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
          1 => 'assigned_user_name',
        ),
        1 => 
        array (
          0 => 'description',
          1 => 
          array (
            'name' => 'aut_d_car_sold_data_leads_name',
          ),
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'engine',
            'label' => 'LBL_ENGINE',
          ),
          1 => 
          array (
            'name' => 'make',
            'label' => 'LBL_MAKE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'model',
            'label' => 'LBL_MODEL',
          ),
          1 => 
          array (
            'name' => 'series',
            'label' => 'LBL_SERIES',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'style',
            'studio' => 'visible',
            'label' => 'LBL_STYLE',
          ),
          1 => 
          array (
            'name' => 'price',
            'label' => 'LBL_PRICE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'other',
            'label' => 'LBL_OTHER',
          ),
        ),
      ),
    ),
  ),
);
?>
