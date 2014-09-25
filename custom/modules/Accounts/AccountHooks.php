<?php
/**
 * Logic hooks for Accounts module
 *
 * @author Mihir Parikh
 */
class AccountHooks {    
    public function check_web_address($bean, $event, $arguments){
        if($bean->website !== $bean->fetched_row["website"]){
            //Check if new website address begins with http:// or https://
            if(!preg_match("#^(http|https)://#", $bean->website)){
                $bean->website = "http://" . $bean->website;
            }
        }
    }
}
