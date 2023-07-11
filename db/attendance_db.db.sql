CREATE TABLE IF NOT EXISTS `admin_list` (
	`admin_id`	INTEGER NOT NULL AUTO_INCREMENT,
	`fullname`	INTEGER NOT NULL,
	`username`	TEXT NOT NULL,
	`password`	TEXT NOT NULL,
	`type`	INTEGER NOT NULL DEFAULT 1,
	`status`	INTEGER NOT NULL DEFAULT 1,
	`date_created`	TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`admin_id` )
);
CREATE TABLE IF NOT EXISTS `department_list` (
	`department_id`	INTEGER NOT NULL AUTO_INCREMENT,
	`name`	TEXT NOT NULL,
	`status`	TEXT NOT NULL DEFAULT 1,
	`date_created`	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`department_id` )
);
CREATE TABLE IF NOT EXISTS `position_list` (
	`position_id`	INTEGER NOT NULL AUTO_INCREMENT,
	`name`	TEXT NOT NULL,
	`status`	TEXT NOT NULL DEFAULT 1,
	`date_created`	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`position_id` )
);
CREATE TABLE IF NOT EXISTS `employee_list` (
	`employee_id`	INTEGER NOT NULL AUTO_INCREMENT,
	`department_id`	INTEGER NOT NULL,
	`position_id`	INTEGER NOT NULL,
	`employee_code`	TEXT NOT NULL,
	`firstname`	TEXT NOT NULL,
	`middlename`	TEXT,
	`lastname`	TEXT NOT NULL,
	`gender`	TEXT NOT NULL,
	`contact`	TEXT NOT NULL,
	`email`	TEXT NOT NULL,
	`password`	TEXT NOT NULL,
	`address`	TEXT NOT NULL,
	`status`	TEXT NOT NULL DEFAULT 1,
	`date_created`	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY(`position_id`) REFERENCES `position_list`(`position_id`) ON DELETE CASCADE,
	FOREIGN KEY(`department_id`) REFERENCES `department_list`(`department_id`) ON DELETE CASCADE,
	PRIMARY KEY(`employee_id`)
);
CREATE TABLE IF NOT EXISTS `attendance_list` (
	`attendance_id`	INTEGER NOT NULL AUTO_INCREMENT,
	`employee_id`	INTEGER NOT NULL,
	`device_type`	TEXT NOT NULL,
	`att_type`	TEXT NOT NULL,
	`ip`	TEXT NOT NULL,
	`location`	TEXT NOT NULL,
	`json_data`	TEXT NOT NULL,
	`date_created`	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY(`employee_id`) REFERENCES `employee_list`(`employee_id`) ON DELETE CASCADE,
	PRIMARY KEY(`attendance_id` )
);
INSERT INTO `admin_list` VALUES (1,'admin','admin','4b67deeb9aba04a5b54632ad19934f26',1,1,'2021-10-10 15:49:47');
INSERT INTO `admin_list` VALUES (2,'Juan Usuario','jusuario','618ce4bf8c5940435d32a48618198a98',2,1,'2021-10-10 16:04:42');
INSERT INTO `admin_list` VALUES (3,'Pablo Usuario','pusuario','9193ae44bc5f731c47d3dc78cdeaf3b8',2,1,'2021-10-11 01:02:10');
INSERT INTO `admin_list` VALUES (4,'Juan Administrador','jadministrador','a482eaf4499c9685a393cc2b3f583023',1,1,'2021-10-11 01:04:04');
INSERT INTO `department_list` VALUES (1,'Tecnologías de La Información','1','2021-10-10 15:55:58');
INSERT INTO `position_list` VALUES (1,'Técnico de Soporte Nivel 1','1','2021-10-10 15:56:32');
INSERT INTO `employee_list` VALUES (1,1,1,'121212E1','Juan','Andrés','Empleado','Male','3062589471','jempleado@cweb.com','f186570fc58d1f94aaaa7cda7eafbb0d','Calle 34 N 21 43','1','2021-10-10 15:58:14');
INSERT INTO `employee_list` VALUES (2,1,1,'121212E2','Pablo','','Empleado','Male','3243452311','pempleado@cweb.com','f96233ca8a3fad46c8044f1369050faa','Calle 54 N 33 21','1','2021-10-11 00:59:21');
INSERT INTO `employee_list` VALUES (4,1,1,'12363656','Juan','','Perez','Male','11222','juan@perez','57493b75c6830f3d545eaba3c9f6c3a0','Managua','1','2023-02-28 03:46:48');
INSERT INTO `attendance_list` VALUES (1,1,'desktop','IN','161.18.6.167','3.2311,-76.4167','{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}','2021-10-10 11:02');
INSERT INTO `attendance_list` VALUES (2,1,'desktop','OUT','161.18.6.167','3.2311,-76.4167','{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}','2021-10-10 11:08');
INSERT INTO `attendance_list` VALUES (3,1,'desktop','IN','161.18.6.167','3.2311,-76.4167','{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}','2021-10-10 14:22');
INSERT INTO `attendance_list` VALUES (4,1,'desktop','L_IN','161.18.6.167','3.2311,-76.4167','{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}','2021-10-10 14:58');
INSERT INTO `attendance_list` VALUES (5,1,'desktop','OUT','161.18.6.167','3.2311,-76.4167','{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}','2021-10-10 14:59');
INSERT INTO `attendance_list` VALUES (6,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 22:49');
INSERT INTO `attendance_list` VALUES (7,1,'desktop','L_IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 22:49');
INSERT INTO `attendance_list` VALUES (8,1,'desktop','L_OUT','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 22:49');
INSERT INTO `attendance_list` VALUES (9,1,'desktop','OUT','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 22:49');
INSERT INTO `attendance_list` VALUES (10,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 22:49');
INSERT INTO `attendance_list` VALUES (11,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 22:53');
INSERT INTO `attendance_list` VALUES (12,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 22:53');
INSERT INTO `attendance_list` VALUES (13,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 22:55');
INSERT INTO `attendance_list` VALUES (14,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 22:58');
INSERT INTO `attendance_list` VALUES (15,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 22:59');
INSERT INTO `attendance_list` VALUES (16,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 22:59');
INSERT INTO `attendance_list` VALUES (17,1,'desktop','OUT','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 22:59');
INSERT INTO `attendance_list` VALUES (18,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:00');
INSERT INTO `attendance_list` VALUES (19,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:03');
INSERT INTO `attendance_list` VALUES (20,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:04');
INSERT INTO `attendance_list` VALUES (21,1,'desktop','','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:04');
INSERT INTO `attendance_list` VALUES (22,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:05');
INSERT INTO `attendance_list` VALUES (23,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:05');
INSERT INTO `attendance_list` VALUES (24,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:05');
INSERT INTO `attendance_list` VALUES (25,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:05');
INSERT INTO `attendance_list` VALUES (26,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:06');
INSERT INTO `attendance_list` VALUES (27,1,'desktop','OUT','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:06');
INSERT INTO `attendance_list` VALUES (28,1,'desktop','L_OUT','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:06');
INSERT INTO `attendance_list` VALUES (29,1,'desktop','L_IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:07');
INSERT INTO `attendance_list` VALUES (30,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:07');
INSERT INTO `attendance_list` VALUES (31,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:09');
INSERT INTO `attendance_list` VALUES (32,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:10');
INSERT INTO `attendance_list` VALUES (33,1,'desktop','OUT','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:10');
INSERT INTO `attendance_list` VALUES (34,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:11');
INSERT INTO `attendance_list` VALUES (35,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:12');
INSERT INTO `attendance_list` VALUES (36,1,'desktop','OUT','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:14');
INSERT INTO `attendance_list` VALUES (37,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:14');
INSERT INTO `attendance_list` VALUES (38,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:15');
INSERT INTO `attendance_list` VALUES (39,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:15');
INSERT INTO `attendance_list` VALUES (40,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:16');
INSERT INTO `attendance_list` VALUES (41,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:18');
INSERT INTO `attendance_list` VALUES (42,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:18');
INSERT INTO `attendance_list` VALUES (43,1,'desktop','OUT','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:19');
INSERT INTO `attendance_list` VALUES (44,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:19');
INSERT INTO `attendance_list` VALUES (45,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:20');
INSERT INTO `attendance_list` VALUES (46,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:22');
INSERT INTO `attendance_list` VALUES (47,1,'desktop','OUT','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:23');
INSERT INTO `attendance_list` VALUES (48,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:23');
INSERT INTO `attendance_list` VALUES (49,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:23');
INSERT INTO `attendance_list` VALUES (50,1,'desktop','IN','186.77.197.197','12.1328,-86.2504','{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-27 23:24');
INSERT INTO `attendance_list` VALUES (51,1,'desktop','IN','190.212.134.92','12.1328,-86.2504','{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-28 14:53');
INSERT INTO `attendance_list` VALUES (52,1,'desktop','IN','190.212.134.92','12.1328,-86.2504','{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-28 18:38');
INSERT INTO `attendance_list` VALUES (53,1,'desktop','OUT','190.212.134.92','12.1328,-86.2504','{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-28 18:38');
INSERT INTO `attendance_list` VALUES (54,1,'desktop','IN','190.212.134.92','12.1328,-86.2504','{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-28 18:39');
INSERT INTO `attendance_list` VALUES (55,1,'desktop','IN','190.212.134.92','12.1328,-86.2504','{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}','2023-02-28 21:12');
