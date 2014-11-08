<?php
if(!defined("sugarEntry") || !sugarEntry){
    die("Not A Valid Entry Point");
}

require_once 'modules/Accounts/views/view.list.php';

class CustomAccountsViewList extends AccountsViewList{
    function CustomAccountsViewDetail(){
        parent::AccountsViewDetail();
    }
    
    function preDisplay() {
        parent::preDisplay();
        
        //Hide the edit link - Uncomment the following line
//        $this->lv->quickViewLinks = false;
    }
}
?>

