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
}
