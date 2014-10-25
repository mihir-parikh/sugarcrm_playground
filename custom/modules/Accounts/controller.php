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
    
    public function action_retrieve_quote(){
        $account_bean = BeanFactory::getBean("Accounts");
        $account_bean->retrieve_by_string_fields(array("name" => $_REQUEST["name"]));
                
        $quote_array = array();
        
        if(empty($account_bean->id)){
            $quote_array["status"] = 0;
        }
        else{
            //Retrieve Annual Revenue information for the current bean
            $annual_revenue = $account_bean->annual_revenue;
            
            if(!empty($annual_revenue)){
                $quote_array["status"] = 1;                
                $quote_array["quote"] = $annual_revenue;
            }
            else{
                $quote_array["status"] = 0;            
            }
        }        
        
        //Print the array to utilise in javascript
        echo json_encode($quote_array);        
        exit();
    }
}
