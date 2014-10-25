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
    
    public function action_CustomViewTempContacts(){
        $this->view = "CustomViewTempContacts";        
    }
    
    public function action_schedule_followup(){
        //Create a new Calls bean
        $calls_bean = BeanFactory::getBean("Calls");
        $calls_bean->name = "A followup call";
        $calls_bean->direction = "Outbound";
        $calls_bean->status = "Planned";
        
        $unix_timestamp = strtotime("+7 day");
        $datetime = date("Y-m-d H:i:s", $unix_timestamp);
        $calls_bean->date_start = $datetime;
        
        $calls_bean->duration_hours = 0;
        $calls_bean->duration_minutes = 30;
        $calls_bean->save();
        
        SugarApplication::redirect("index.php?module=Contacts&action=DetailView&record=".$this->bean->id);
    }
}
