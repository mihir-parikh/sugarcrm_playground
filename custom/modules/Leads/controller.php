<?php
class CustomLeadsController extends SugarController{
    public function action_log_autonote(){
        //Load a notes bean
        $notes_bean = BeanFactory::getBean("Notes");
        
        //Create a new note and save it
        $notes_bean->name = "Leads autonote";
        $notes_bean->description = "This note is autologged for a lead.";
        $note_id = $notes_bean->save();
        
        //Load leads-notes relationship
        $lead_bean = BeanFactory::getBean("Leads", $_REQUEST["record"]);
        $lead_bean->load_relationship("notes");
        
        //Save relationship record
        $lead_bean->notes->add($note_id);
        $lead_bean->save();
        
        SugarApplication::redirect('index.php?module=Leads&action=DetailView&record='.$_REQUEST["record"]);
    }
}
?>