<?php
if(!defined("sugarEntry") || !sugarEntry){
    die("Not A Valid Entry Point");
}

require_once 'modules/Accounts/views/view.detail.php';

class CustomAccountsViewDetail extends AccountsViewDetail{
    function CustomAccountsViewDetail(){
        parent::AccountsViewDetail();
    }
    
    /**
     * Override - Called from process(). This method will display subpanels.
     * include/MVC/View/SugarView.php
     */
    protected function _displaySubPanels() {
        if(isset($this->bean) && !empty($this->bean->id) && (file_exists("modules/" . $this->module . "/metadata/subpaneldefs.php") || 
                file_exists("custom/modules/" . $this->module . "/Ext/Layoutdefs/layoutdefs.ext.php"))){
            $GLOBALS["focus"] = $this->bean;
            require_once 'include/SubPanel/SubPanelTiles.php';
            $subpanel = new SubPanelTiles($this->bean, $this->module);
            
            //Dependent Logic
            global $current_user;
            require_once 'modules/ACLRoles/ACLRole.php';
            $role = new ACLRole();
            $user_id = $current_user->id;
            $roles = $role->getUserRoleNames($user_id);
            
            if(in_array("Technical support", $roles)){
                //Subpanels to hide
                $hide_subpanels = array("bugs");
                
                if(isset($subpanel->subpanel_definitions->layout_defs['subpanel_setup']["bugs"])){
                    unset($subpanel->subpanel_definitions->layout_defs['subpanel_setup']["bugs"]);
                }
            }
            echo $subpanel->display();
        }
    }
}
?>

