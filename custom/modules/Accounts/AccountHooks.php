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
    
    public function notify_on_delete($bean, $event, $arguments){
        //Send an email to the department manager
        require_once("include/SugarPHPMailer.php");
        
        $email_obj = new Email();
        $defaults = $email_obj->getSystemDefaultEmail();
        
        $mail = new SugarPHPMailer();
        $mail->setMailerForSystem();
        $mail->From = $defaults["email"];
        $mail->FromName = $defaults["name"];
        $mail->Subject = "Account record deleted";
        $mail->Body = "The account record with ID: " . $bean->id . ", Name: " . $bean->name . ", Address: "
            . $bean->billing_address_street . ", " . $bean->billing_address_city . ", " . $bean->billing_address_state . ", "
            . $bean->billing_address_postalcode . ", " . $bean->billing_address_country . " is being deleted.";
        $mail->prepForOutbound();
        $mail->AddAddress("test@test.com");
        @$mail->Send();
    }
    
    public function relate_contacts_city($bean, $event, $arguments){        
        //Find contacts in the same city
        
        if(empty($bean->fetched_row["id"])){
            if(!empty($bean->billing_address_city)){
                $contacts_bean = BeanFactory::getBean("Contacts");
                $contacts = $contacts_bean->get_full_list('',"contacts.primary_address_city = '$bean->billing_address_city'");        

                if($contacts != NULL){
                    $bean->load_relationship("contacts");
                    foreach($contacts as $contact){
                        $bean->contacts->add($contact->id);
                    }
                }
            }
        }
    }
    
    public function assign_contacts_same_user($bean, $event, $arguments){
        //Assigned to new user        
        if($bean->assigned_user_id !== $bean->fetched_row["assigned_user_id"]){
            $bean->load_relationship("contacts");
            
            foreach($bean->contacts->getBeans() as $contact){
                $contact->assigned_user_id = $bean->assigned_user_id;
                $contact->save();
            }
        }        
    }
    
    public function custom_name_color($bean, $event, $arguments){
        $bean->name = "<span style='color:red;'>" . $bean->name . "</span>";
    }
}
