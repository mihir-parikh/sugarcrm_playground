<?php

/*
 * A file containing a generic web service class
 */

/**
 * A class containing common rest variables and common methods
 *
 * @author Mihir Parikh
 */
class GenericWebService {        
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
