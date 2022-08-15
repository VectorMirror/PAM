/* CREACION DE LA BASE DE DE DATOS PARA EL PROYECTO PAM (Plataforma de Acuerdos y Minutas)*/
CREATE DATABASE IF NOT EXISTS `PAM` CHARACTER SET = utf8mb4;
USE `PAM`;
/* CREACION DE LAS TABLAS*/
CREATE TABLE `roles` (
    `rol_id` INT(11) NOT NULL AUTO_INCREMENT,
    `rol_permiso` VARCHAR(20) NOT NULL,
    PRIMARY KEY(`rol_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `roles` (`rol_id`, `rol_permiso`) VALUES
(1, 'Administrador'),
(2, 'UTIC'),
(3, 'Fabrica');

CREATE TABLE`acciones`(
    `accion_id` INT(11) NOT NULL AUTO_INCREMENT,
    `accion_cmd` VARCHAR(25) NOT NULL,
    PRIMARY KEY(`accion_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `acciones` (`accion_id`, `accion_cmd`) VALUES
(1, 'Crear Usuario'),
(2, 'Editar Usuario'),
(3, 'Inactivar Usuario '),
(4, 'Crear Minuta'),
(5, 'Editar Minuta'),
(6, 'Activar Minuta'),
(7, 'Inactivar Minuta'),
(8, 'Cerrar Minuta'),
(9, 'Crear Acuerdo'),
(10, 'Editar Acuerdo'),
(11, 'Activar Acuerdo'),
(12, 'Inactivar Acuerdo'),
(13, 'Cerrar Acuerdo'),
(14, 'Imprimir Minuta'),
(15, 'Crear Rol'),
(16, 'Editar Rol'),
(17, 'Crear Cargo'),
(18, 'Editar Cargo');

CREATE TABLE `cargos`(
    `cargo_id` INT(11) NOT NULL AUTO_INCREMENT,
    `cargo_nom` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`cargo_id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

INSERT INTO `cargos` (`cargo_id`, `cargo_nom`) VALUES
(1, 'Dirección Coordinadora de Innovación y Desarrollo Tecnológico'),
(2, 'Dirección de Desarrollo Tecnológico'),
(3, 'Dirección de Administración y Gestión Electrónica de Documentos'),
(4, 'Subdirección de Sistemas Administrativos'),
(5, 'Subdirección de Implementación y Administración de Aplicaciones'),
(6, 'Subdirección de Gestión Electrónica de Documentos'),
(7, 'Departamento de Portales y Administración de Contenido'),
(8, 'Departamento de Sistemas Ejecutivos');

CREATE TABLE `unidades` (
    `unidad_id` INT(11) NOT NULL AUTO_INCREMENT,
    `unidad_num` INT(11) NOT NULL,
    `unidad_nom` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`unidad_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `unidades` (`unidad_id`, `unidad_num`, `unidad_nom`) VALUES
(1, 100, 'SECRETARIO DEL RAMO '),
(2, 102, 'DIRECCION GENERAL DE VINCULACION'),
(3, 110, 'UNIDAD DE ASUNTOS JURIDICOS'),
(4, 111, 'DIRIRECCION GENERAL DE COMUNICACION SOCIAL'),
(5, 112, 'ORGANO INTERNO DE CONTROL'),
(6, 114, 'DIRECCION GENERAL DE PLANEACION'),
(7, 200, 'SUBSECRETARIO DE INFRAESTRUCTURA'),
(8, 205, 'U. INFRAESTRUCTURA CARRETERA PARA EL DESARROLLO REG'),
(9, 210, 'DIR. GRAL. DE CARRETERAS'),
(10, 211, 'DIR. GRAL. DE CONSERVACION DE CARRETERAS'),
(11, 212, 'DIR. GRAL. DE SERVICIOS TECNICOS'),
(12, 214, 'DIR. GRAL. DE DESARROLLO CARRETERO'),
(13, 300, 'SUBSECRETARIA DEL TRANSPORTE'),
(14, 310, 'DIR. GRAL. DE AERONAUTICA CIVIL'),
(15, 311, 'DIRECCION GENERAL DE DESARROLLO FERROVIARIO Y MULTIMODAL'),
(16, 312, 'DIR. GRAL. DE AUTOTRANSPORTE FEDERAL'),
(17, 313, 'DIR. GRAL. DE PROTECT. Y MED. PREV. EN EL TRANSP'),
(18, 400, 'SUBSECRETARIA DE COMUNICACIONES'),
(19, 410, 'DIR. GRAL. DE SISTEMAS DE RADIO Y TELEVISION'),
(20, 411, 'DIR. GRAL. DE POLITICA DE TELECOMUNICACIONES Y RADIODIFUSION'),
(21, 414, 'UNIDAD DE LA RED FEDERAL'),
(22, 415, 'COORDINACION DE LA SOCIEDAD DE LA INFORMACION Y EL CONOCIMIENTO'),
(23, 500, 'COORD. GENERAL DE PUERTOS Y MARINA MERCANTE'),
(24, 510, 'DIR. GRAL. DE PUERTOS'),
(25, 511, 'DIR. GRAL. DE MARINA MERCANTE'),
(26, 512, 'DIR. GRAL. DE FOMENTO Y ADMINISTRACION PORTUARIA'),
(27, 600, 'COORDINACION GENERAL DE CENTRO S.C.T'),
(28, 611, 'DIR. GRAL. DE EVALUACION'),
(29, 621, 'CENTRO S.C.T AGUASCALIENTES'),
(30, 622, 'CENTRO S.C.T BAJA CALIFORNIA'),
(31, 623, 'CENTRO S.C.T BAJA CALIFORNIA SUR'),
(32, 624, 'CENTRO S.C.T CAMPECHE'),
(33, 625, 'CENTRO S.C.T COAHUILA'),
(34, 626, 'CENTRO S.C.T COLIMA'),
(35, 627, 'CENTRO S.C.T CHIAPAS'),
(36, 628, 'CENTRO S.C.T CHIHUAHUA'),
(37, 630, 'CENTRO S.C.T DURANGO'),
(38, 631, 'CENTRO S.C.T GUANAJUATO'),
(39, 632, 'CENTRO S.C.T GUERRERO'),
(40, 633, 'CENTRO S.C.T HIDALGO'),
(41, 634, 'CENTRO S.C.T JALISCO'),
(42, 635, 'CENTRO S.C.T MEXICO'),
(43, 636, 'CENTRO S.C.T MICHOACAN'),
(44, 637, 'CENTRO S.C.T MORELOS'),
(45, 638, 'CENTRO S.C.T NAYARIT'),
(46, 639, 'CENTRO S.C.T NUEVO LEON'),
(47, 640, 'CENTRO S.C.T OAXACA'),
(48, 641, 'CENTRO S.C.T PUEBLA'),
(49, 642, 'CENTRO S.C.T QUERETARO'),
(50, 643, 'CENTRO S.C.T QUINTANA ROO'),
(51, 644, 'CENTRO S.C.T SAN LUIS POTOSI'),
(52, 645, 'CENTRO S.C.T SINALOA'),
(53, 646, 'CENTRO S.C.T SONORA'),
(54, 647, 'CENTRO S.C.T TABASCO'),
(55, 648, 'CENTRO S.C.T TAMAULIPAS'),
(56, 649, 'CENTRO S.C.T TLAXCALA'),
(57, 650, 'CENTRO S.C.T VERACRUZ'),
(58, 651, 'CENTRO S.C.T YUCATAN'),
(59, 652, 'CENTRO S.C.T ZACATECAS'),
(60, 700, 'UNIDAD DE ADMINISTRACION Y FINANZAS'),
(61, 710, 'DIR. GRAL. DE PROG. ORGANIZACION Y PRESUP.'),
(62, 711, 'DIR. GRAL. DE RECURSOS HUMANOS'),
(63, 712, 'DIR. GRAL. DE RECURSOS MATERIALES'),
(64, 713, 'UNIDAD DE TECNOLOGIA DE INFORMACION Y COMUNICACIONES');

CREATE TABLE `usuarios` (
    `user_id` INT(11) NOT NULL AUTO_INCREMENT,
    `user_nom` VARCHAR(30) NOT NULL,
    `user_ap` VARCHAR(30) NOT NULL,
    `user_am` VARCHAR(30) NOT NULL,
    `user_mail` VARCHAR(50) NOT NULL,
    `user_pass` VARCHAR(250) NOT NULL,
    `user_status` INT(3) NOT NULL DEFAULT 1,
    `user_unidad`  INT(5) NOT NULL,
    `user_cargo` INT(5) NOT NULL,
    `user_rol` INT(5) NOT NULL,
    `user_titulo` VARCHAR(50),
    `user_fecha` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `user_madeBy` INT(11) NOT NULL,
    PRIMARY KEY(`user_id`),
    FOREIGN KEY(`user_unidad`) REFERENCES `unidades`(`unidad_id`),
    FOREIGN KEY(`user_cargo`) REFERENCES `cargos`(`cargo_id`),
    FOREIGN KEY(`user_rol`) REFERENCES `roles`(`rol_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `minutas` (
    `minuta_id` INT(11) NOT NULL AUTO_INCREMENT,
    `minuta_madeBy` INT(11) NOT NULL,
    `minuta_titulo` VARCHAR(150) NOT NULL, 
    `minuta_desarrollo` LONGTEXT NOT NULL,
    `minuta_lugar` VARCHAR (100) NOT NULL,
    `minuta_fecha` DATE NOT NULL,
    `minuta_hora` VARCHAR (15) NOT NULL,
    `minuta_hora_cierre` DATE NOT NULL,
    `minuta_unidad_admin` INT(5) NOT NULL,
    `minuta_fecha_cierre` DATE NOT NULL,
    `minuta_status` INT(5) NOT NULL DEFAULT 1 COMMENT '0-Finalizada, 1-Activa, 2-En Espera',
    `minuta_prioridad` INT(5) NOT NULL DEFAULT 0 COMMENT '0-Normal, 1-Urgente. 2-Paso Fecha',
    `minuta_participantes` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`minuta_id`),
    FOREIGN KEY (`minuta_madeBy`)REFERENCES `usuarios`(`user_id`),
    FOREIGN KEY(`minuta_unidad_admin`) REFERENCES `unidades`(`unidad_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `acuerdos` (
    `acuerdo_id` INT(11) NOT NULL AUTO_INCREMENT,
    `acuerdo_titulo` VARCHAR(100) NOT NULL,
    `acuerdo_fecha` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `acuerdo_responsable` INT(11) NOT NULL,
    `acuerdo_fecha_entrega` DATE NOT NULL,
    `acuerdo_status` INT(11) NOT NULL DEFAULT 0 COMMENT '0-Pendiente, 1-Hecho',
    `minuta_prioridad` INT(5) NOT NULL DEFAULT 0 COMMENT '0-Normal, 1-Urgente. 2-Paso Fecha',
    PRIMARY KEY (`acuerdo_id`),
    FOREIGN KEY (`acuerdo_responsable`) REFERENCES usuarios(`user_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `oficios` (
    `oficio_id` INT(11) NOT NULL AUTO_INCREMENT,
    `oficio_minuta` INT (11) NOT NULL,
    `oficio_url` VARCHAR(250) NOT NULL,
    PRIMARY KEY (`oficio_id`),
    FOREIGN KEY(`oficio_minuta`) REFERENCES `minutas`(`minuta_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `historial` (
    `hist_id` INT(11) NOT NULL AUTO_INCREMENT,
    `hist_user` INT(11) NOT NULL,
    `hist_minuta`  INT(11) NOT NULL DEFAULT 0,
    `hist_fecha` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `hist_ip` VARCHAR(50) NOT NULL,
    `hist_accion` INT(11) NOT NULL,
    `hist_antes` VARCHAR(250) NOT NULL DEFAULT 'S/C',
    `hist_ahora` VARCHAR(250) NOT NULL DEFAULT 'S/C',
    PRIMARY KEY (`hist_id`),
    FOREIGN KEY(`hist_user`) REFERENCES `usuarios`(`user_id`),
    FOREIGN KEY(`hist_minuta`) REFERENCES `minutas`(`minuta_id`),
    FOREIGN KEY(`hist_accion`) REFERENCES `acciones`(`accion_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;