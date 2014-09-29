<?php
/**
 * Custom controller for Contacts module
 *
 * @author Mihir Parikh
 */
class CustomContactsController extends SugarController {
    public function post_detailview(){
        $this->view = "detail";
        $GLOBALS['view'] = $this->view;
        
        //Load related Account record
        $this->bean->load_relationship("accounts");        
        foreach ($this->bean->accounts->getBeans() as $account){
            //Set Account bean's city to Contact bean
            $this->bean->account_city_c = $account->billing_address_city;
            break;
        }                
    }
}
