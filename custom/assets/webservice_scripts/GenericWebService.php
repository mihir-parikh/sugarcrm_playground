<?php

/*
 * A file containing a generic web service class
 */

include_once '../../custom_config/custom_config.php';

/**
 * A class containing common rest variables and common methods
 *
 * @author Mihir Parikh
 */
class GenericWebService {
    private $url;
    private $username;
    private $password;
    
    public function GenericWebService(){
        $this->url = SUGAR_SITE_URL . "service/v4_1/rest.php";
        $this->username = SUGAR_WEBSERVICE_USER;
        $this->password = SUGAR_WEBSERVICE_PASSWORD;
    }
    
    public function __get($variable) {
        if(property_exists($this, $variable)){
            return $this->$variable;
        }        
    }
    
    public function __set($variable, $value) {
        if(property_exists($this, $variable)){
            $this->$variable = $value;
        }        
    }
    
    //Function to make cURL request
    public function call($method, $parameters, $url){
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 0);

        $json_encoded_data = json_encode($parameters);

        $post = array(
            "method" => $method,
            "input_type" => "JSON",
            "response_type" => "JSON",
            "rest_data" => $json_encoded_data
        );

        curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
        $result = curl_exec($ch);
        curl_close($ch);
        $response = json_decode($result);

        return $response;
    }
}
