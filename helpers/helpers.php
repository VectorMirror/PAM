<?php
    //regresa la url del proyecto
    function base_url() {
        return BASE_URL;
    }
    //muestra informaciuon formateada
    function dep($data){
        $format = print_r('<pre');
        $format .= print_r($data);
        $format .= print_r('<pre');
        return $format;
    }
    //Elimina excesos de espacios entre palabras
    function strClean($strCadena){
        $string = preg_replace(['/\s+/', '/^\s|\s$/'], [' ', ''], $strCadena);
        $string = trim($string);  //elimina espacios en blanco al inicio y al final
        $string = stripslashes($string);  // elimina \invertidas
        $string = str_ireplace('<script>', '', $string);
        $string = str_ireplace('</script>', '', $string);
        $string = str_ireplace('<script src>', '', $string);
        $string = str_ireplace('<script type=>', '', $string);
        $string = str_ireplace('SELECT * FROM', '', $string);
        $string = str_ireplace('DELETE FROM', '', $string);
        $string = str_ireplace('INSERT INTO', '', $string);
        $string = str_ireplace('SELECT COUNT(*) FROM', '', $string);
        $string = str_ireplace('DROP TABLE', '', $string);
        $string = str_ireplace("OR '1'='1'", '', $string);
        $string = str_ireplace('OR "1"="1"', '', $string);
        $string = str_ireplace('OR ´1´=´1´', '', $string);
        $string = str_ireplace('OR `1`=`1`', '', $string);
        $string = str_ireplace('is NULL; --', '', $string);
        $string = str_ireplace('is NULL; --', '', $string);
        $string = str_ireplace("LIKE '", '', $string);
        $string = str_ireplace('LIKE "', '', $string);
        $string = str_ireplace('LIKE ´', '', $string);
        $string = str_ireplace("OR 'a'='a'", '', $string);
        $string = str_ireplace('OR "a"="a"', '', $string);
        $string = str_ireplace('OR ´a´=´a´', '', $string);
        $string = str_ireplace('OR `a`=`a`', '', $string);
        $string = str_ireplace('--', '', $string);
        $string = str_ireplace('^', '', $string);
        $string = str_ireplace('[', '', $string);
        $string = str_ireplace(']', '', $string);
        $string = str_ireplace('==', '', $string);
        return $string;
    }

    //genera un password de 10 caracteres
    function passGenerator($length = 10) {
        $pass ='';
        $longPass = $length;
        $cadena = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789-_#';
        $longitudCadena = strlen($cadena);

        for($i=1; $i<=$longPass; $i++){
            $pos = rand(0, $longitudCadena-1);
            $pass .= substr($cadena, $pos,1);
        }
        return $pass;
    }

    //genera token
    function token(){
        $r1 = bin2hex(random_bytes(10));
        $r2 = bin2hex(random_bytes(10));
        $r3 = bin2hex(random_bytes(10));
        $r4 = bin2hex(random_bytes(10));
        $token = $r1. '-'. $r2. '-'. $r3. '-'. $r4;
        return $token;
    }

    //formato para valores moenetarios
    function formatMoney($cantidad){
        $cantidad = number_format($cantidad, 2, SPD, SPM);
        return $cantidad;
    }
?>