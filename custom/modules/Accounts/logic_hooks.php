<?php
// Do not store anything in this file that is not part of the array or the hook version.  This file will	
// be automatically rebuilt in the future. 
 $hook_version = 1; 
$hook_array = Array(); 
// position, file, function 
$hook_array['after_ui_frame'] = Array(); 
$hook_array['after_ui_frame'][] = Array(1, 'Accounts InsideView frame', 'modules/Connectors/connectors/sources/ext/rest/insideview/InsideViewLogicHook.php','InsideViewLogicHook', 'showFrame'); 

$hook_array["before_save"] = Array();
$hook_array["before_save"][] = Array(1, "Check web address changes", "custom/modules/Accounts/AccountHooks.php", "AccountHooks", "check_web_address");
$hook_array["before_save"][] = Array(2, "Relate contacts in same city", "custom/modules/Accounts/AccountHooks.php", "AccountHooks", "relate_contacts_city");
$hook_array["before_save"][] = Array(3, "Assign contacts to the same user", "custom/modules/Accounts/AccountHooks.php", "AccountHooks", "assign_contacts_same_user");

//$hook_array["before_delete"] = Array();
//$hook_array["before_delete"][] = Array(1, "Notify the manager on delete", "custom/modules/Accounts/AccountHooks.php", "AccountHooks", "notify_on_delete");

$hook_array["process_record"] = Array();
$hook_array["process_record"][] = Array(1, "Change the name column color", "custom/modules/Accounts/AccountHooks.php", "AccountHooks", "custom_name_color");
?>