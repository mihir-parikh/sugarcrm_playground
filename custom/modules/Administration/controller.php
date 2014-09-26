<?php
class CustomAdministrationController extends SugarController{
    public function preProcess() {
        parent::preProcess();
        
        global $current_user;
        if(!$current_user->isAdmin()){
            sugar_die("Non-admin users are not allowed to access the admin area.");
        }
    }
}
?>

