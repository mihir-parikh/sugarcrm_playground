<?php

/**
 * A temporary Custom Contacts view
 *
 * @author Mihir Parikh
 */
require_once('include/MVC/View/SugarView.php');

class ContactsViewCustomViewTempContacts extends SugarView{    
    public function display() {
        echo "<b>**This is just a practice custom view for contacts.**<b>";
    }
}
