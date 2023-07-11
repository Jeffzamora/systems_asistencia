<?php
date_default_timezone_set('America/Bogota');
// if(!is_dir(__DIR__.'./db'))
//     mkdir(__DIR__.'./db');
// if(!defined('db_file')) define('db_file',__DIR__.'./db/attendance_db.db');
// function my_udf_md5($string) {
//     return md5($string);
// }

Class DBConnection{
    public $db;
    function __construct(){
        $this->db = mysqli_connect("localhost","usuario","password","bd");
        if (mysqli_connect_errno()) {
            echo "Error al conectar con la base de datos MySQL: " . mysqli_connect_error();
            exit();
          }
    }
    function isMobileDevice(){
        $aMobileUA = array(
            '/iphone/i' => 'iPhone', 
            '/ipod/i' => 'iPod', 
            '/ipad/i' => 'iPad', 
            '/android/i' => 'Android', 
            '/blackberry/i' => 'BlackBerry', 
            '/webos/i' => 'Mobile'
        );
    
        //Return true if Mobile User Agent is detected
        foreach($aMobileUA as $sMobileKey => $sMobileOS){
            if(preg_match($sMobileKey, $_SERVER['HTTP_USER_AGENT'])){
                return true;
            }
        }
        //Otherwise return false..  
        return false;
    }
    function __destruct(){
        mysqli_close($this->db);
    }
}

$db = new DBConnection();