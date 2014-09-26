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
    
    public function fetch_weather_info($bean, $event, $arguments){
        //Hard coding weather city to Cedar Rapids. 
        //To retrieve the city dynamically, do as following:
        //"http://api.wunderground.com/api/key/geolookup/conditions/q/".$bean->primary_address_state."/".$bean->primary_address_city.".json";
        $json_string = file_get_contents("http://api.wunderground.com/api/key/geolookup/conditions/q/IA/Cedar_Rapids.json");
        $parsed_json = json_decode($json_string);                
        $location = $parsed_json->{'location'}->{'city'};
        $temp_f = $parsed_json->{'current_observation'}->{'temp_f'};
        $bean->weather_info_c = "Current temperature in ${location} is: ${temp_f}";        
    }
}
