<?php
    //define('BASE_URL', 'http://localhost/PAM/');
    const BASE_URL = 'http://localhost/PAM/ ';

    //zona horaria
    date_default_timezone_set('America/Mexico_City');

    //constantes para la conexion a la DB
    const DB_HOST = '127.0.0.1';
    const DB_USER = 'root';
    const DB_PASS = '';
    const DB_NAME = 'pam';
    const DB_CHARSET = 'charset=utf8';

    //delimitadores decimal y millar ej 24,1989.00
    const SPD ='.';
    const SPM =',';
    //simbolo de moneda
    const SMONEY ='$'; 
    const TMONEYMEX ='MXN';

?>