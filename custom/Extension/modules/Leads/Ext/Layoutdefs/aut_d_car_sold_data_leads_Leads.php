<?php
 // created: 2014-10-03 15:19:44
$layout_defs["Leads"]["subpanel_setup"]['aut_d_car_sold_data_leads'] = array (
  'order' => 100,
  'module' => 'aut_d_car_sold_data',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_AUT_D_CAR_SOLD_DATA_LEADS_FROM_AUT_D_CAR_SOLD_DATA_TITLE',
  'get_subpanel_data' => 'aut_d_car_sold_data_leads',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
