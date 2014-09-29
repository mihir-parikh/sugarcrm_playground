<?php
/**
 * Custom controller for Accounts module
 *
 * @author Mihir Parikh
 */
class CustomAccountsController extends SugarController {
    public function post_editview(){
        //Editing the editview
        $this->view = "edit";
        $GLOBALS['view'] = $this->view;
        $this->bean->billing_address_city = strtoupper($this->bean->billing_address_city);
    }
}
