function verPass01(){
    let swap01= document.getElementById('ver01');
    let elemento = document.getElementById('ojo');
    if(swap01.type == 'password' && elemento.className == 'glyphicon glyphicon-eye-open' ){
        swap01.type = 'text';
        elemento.className = 'glyphicon glyphicon-eye-close';
    }
    else{
        swap01.type= 'password';
        elemento.className = 'glyphicon glyphicon-eye-open';
    }
}
//Esta funcion es para la vista de registro para el campo de repetir contraseña
function verPass02(){
    let swap02= document.getElementById('ver02');
    if(swap02.type == 'password' && elemento.className == 'glyphicon glyphicon-eye-open' ){
        swap02.type = 'text';
        elemento.className = 'glyphicon glyphicon-eye-close';
    }
    else{
        swap02.type= 'password';
        elemento.className = 'glyphicon glyphicon-eye-open';
    }
}