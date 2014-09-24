<?php
class ContactHooks{
    public function combine_name_fields($bean, $event, $arguments){
        //If first_name is blank
        if(empty($bean->first_name)){
            $bean->fullname_c = $bean->last_name;
        }
        else {
            //If both fields are filled
            $bean->fullname_c = $bean->first_name . " " . $bean->last_name;
        }        
    }
}
