<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>.: Iniciar Sesión :.</title>
        <!-- CSS -->
        <link href="/favicon.ico" rel="shortcut icon">
        <link href="https://framework-gb.cdn.gob.mx/assets/styles/main.css" rel="stylesheet">
        <link href="http://localhost/pam/resources/css/styles.css" rel="stylesheet">
        <script type="text/javascript" src="http://localhost/pam/resources/js/validaForm.js"></script>

    </head> 
    <body>
        <div class="container top-buffer">
 
            <!-- Contenido -->
            <main>
                <form class="form-horizontal" role="form" action="" method="post">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4"> 
                                <h3> &raquo; Iniciar Sesión </h3>
                                <hr class="red">   
                                <label class="control-label" for="email"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Correo Electronico</label>
                                <input class="form-control" id="email" type="text" name="usuario">
                            </div>
                            <div class="col-sm-1"></div>
                        </div><br/>

                        <div class="row">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4">
                                <label class="control-label" for="pass"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span> Contraseña</label>
                                <input class="form-control" id="ver01" type="password" name="password">
                            </div>
                            <div class="col-sm-1">
                                <br/><h4><a href="javascript:verPass01();"><label><span class="glyphicon glyphicon-eye-open eye" aria-hidden="true" title="VER CONTRASEÑA"></span></label></a></h4>
                            </div>
                        </div><br/>

                        <div class="row">
                            <div class="col-sm-5"></div>
                            <div class="col-sm-3">
                                
                                <button class="btn btn-primary pull-left" type="submit"><span class="glyphicon glyphicon-send" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;INICIAR SESIÓN</button><br/>
                            </div>
                            <div class="col-sm-1"></div>
                        </div>

                    </div>                                        
                </form>
            </main>
        </div>
        <div class="bottom-buffer"></div>
        <!--     JS -->
        <script src="https://framework-gb.cdn.gob.mx/gobmx.js"></script>
        
    </body>
</html>