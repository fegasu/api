CREATE TABLE ESTADOEPS
(
  idEstadoEPS INTEGER PRIMARY KEY AUTOINCREMENT,
  descripcion VARCHAR(255)  NOT NULL
  );

INSERT INTO estadoeps (descripcion) VALUES ('Activa');
INSERT INTO estadoeps (descripcion) VALUES ('Sancionada');
INSERT INTO estadoeps (descripcion) VALUES ('Desactivada');
INSERT INTO estadoeps (descripcion) VALUES ('Intervenida');
INSERT INTO estadoeps (descripcion) VALUES ('Liquidada');

CREATE TABLE EPS
(
ideps INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT ,
nombre VARCHAR(255)  NOT NULL,
estadoeps INTEGER NOT NULL
);

INSERT INTO eps (nombre, estadoeps) VALUES ('SALUDCOOP',4);
INSERT INTO eps (nombre, estadoeps) VALUES ('CAFESALUD',1);
INSERT INTO eps (nombre, estadoeps) VALUES ('NUEVA EPS',1);
INSERT INTO eps (nombre, estadoeps) VALUES ('ISS',5);
INSERT INTO eps (nombre, estadoeps) VALUES ('CAPRECOM',4);
INSERT INTO eps (nombre, estadoeps) VALUES ('COOMEVA',1);
INSERT INTO eps (nombre, estadoeps) VALUES ('COMPENSAR',1);
INSERT INTO eps (nombre, estadoeps) VALUES ('COLMEDICA',1);
INSERT INTO eps (nombre, estadoeps) VALUES ('HUMANA VIVIR',2);
INSERT INTO eps (nombre, estadoeps) VALUES ('FAMISANAR',1);
INSERT INTO eps (nombre, estadoeps) VALUES ('CRUZ BLANCA',3);
INSERT INTO eps (nombre, estadoeps) VALUES ('SOLSALUD',1);
INSERT INTO eps (nombre, estadoeps) VALUES ('SALUD TOTAL',5);
INSERT INTO eps (nombre, estadoeps) VALUES ('SANITAS',3);

CREATE TABLE tipoafiliado
(
  idTipoAfiliado INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT  ,
  descripcion VARCHAR(255)  NOT NULL
);

INSERT INTO tipoafiliado (descripcion) VALUES ('Cotizante');
INSERT INTO tipoafiliado (descripcion) VALUES ('Beneficiario');
INSERT INTO tipoafiliado (descripcion) VALUES ('Subsidiado');
INSERT INTO tipoafiliado (descripcion) VALUES ('Fosiga');
INSERT INTO tipoafiliado (descripcion) VALUES ('Sisben');

CREATE TABLE TIPOIDENTIFICACION
(
  idTipoIdentificacion INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT  ,
  abreviatura VARCHAR(255)  NOT NULL,
  descripcion VARCHAR(255)  NULL
);

INSERT INTO tipoidentificacion (abreviatura, descripcion) VALUES ('CC', 'cedula de ciudadania');
INSERT INTO tipoidentificacion (abreviatura, descripcion) VALUES ('TI','tarjeta de identidad');
INSERT INTO tipoidentificacion (abreviatura, descripcion) VALUES ('NUI', 'Numero Unico de Identificacion');
INSERT INTO tipoidentificacion (abreviatura, descripcion) VALUES ('RC', 'Registro civil');
INSERT INTO tipoidentificacion (abreviatura, descripcion) VALUES ('PS', 'Pasaporte');

CREATE TABLE tiposervicio
(
  idTipoServicio INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT ,
  descripcion VARCHAR(255)  NOT NULL
);

INSERT INTO tiposervicio (descripcion) VALUES ('Consulta medico general');
INSERT INTO tiposervicio (descripcion) VALUES ('Consulta especialista');
INSERT INTO tiposervicio (descripcion) VALUES ('Consulta unidad de urgencias');
INSERT INTO tiposervicio (descripcion) VALUES ('Consulta externa');
INSERT INTO tiposervicio (descripcion) VALUES ('Odontologia');
INSERT INTO tiposervicio (descripcion) VALUES ('Radiologia');
INSERT INTO tiposervicio (descripcion) VALUES ('Consulta unidad de pediatra');
INSERT INTO tiposervicio (descripcion) VALUES ('Consulta interna');
INSERT INTO tiposervicio (descripcion) VALUES ('Unidad de cuidados intensivos');
INSERT INTO tiposervicio (descripcion) VALUES ('Consulta psiquiatria');

CREATE TABLE estadopersona
(
  idEstadoPersona INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT   ,
  descripcion VARCHAR(255)  NOT NULL
);

INSERT INTO estadopersona (descripcion) VALUES ('Activo');
INSERT INTO estadopersona (descripcion) VALUES ('Afiliado');
INSERT INTO estadopersona (descripcion) VALUES ('Cesante');
INSERT INTO estadopersona (descripcion) VALUES ('Retirado');

CREATE TABLE PERSONA
(
idPersona INTEGER  NOT NULL PRIMARY KEY,
tipoidentificacion INTEGER NOT NULL, 
nombre VARCHAR(255)  NOT NULL,
apellido VARCHAR(255)  NOT NULL,
fechaNacimiento date NOT NULL,
sexo char(1) NOT NULL);

INSERT INTO persona VALUES (769086765, 1,'ARLETH','BRAVO', strftime('11/11/1965'),'F');
INSERT INTO persona VALUES (1057583006,1,'ANA','RIOS',strftime('02/01/1990'),'F');
INSERT INTO persona VALUES (52158989,1,'MARILEIS','CAMACHO',strftime('29/05/1975'),'F');	
INSERT INTO persona VALUES (1026553762,1,'JOSE','ALARCON',strftime('13/11/1977'),'M');
INSERT INTO persona VALUES (65799510,1,'CARMEN','CASTANEDA',strftime('30/12/1976'),'F');	
INSERT INTO persona VALUES (52377972,1,'ANA','ALGARRA',strftime('12/01/1970'),'F');
INSERT INTO persona VALUES (250025,4,'LIZET','GORDO',strftime('23/06/2000'),'F');
INSERT INTO persona VALUES (7276950,1,'CELSO','SALAMANCA',strftime('15/06/1972'),'M');
INSERT INTO persona VALUES (1127722084,4,'JUAN','JIMENEZ',strftime('10/02/2004'),'M');
INSERT INTO persona VALUES (1127722591,4,'LAURA','BELTRAN',strftime('07/09/2006'),'F');
INSERT INTO persona VALUES (990014705,3,'CARIN','PENA',strftime('29/06/1998'),'M');
INSERT INTO persona VALUES (990014543,3,'JERSON','GAITAN',strftime('23/02/1994'),'M');
INSERT INTO persona VALUES (9267617,4,'JHON,','GAITAN',strftime('26/09/1990'),'M');
INSERT INTO persona VALUES (1126704602,4,'SHAILYN','ROJAS',strftime('22/11/2009'),'F');
INSERT INTO persona VALUES (103251438,2,'JIMMY','CARDENAS',strftime('25/03/1991'),'M');
INSERT INTO persona VALUES (96195585,1,'GONZALO','GUEVARA',strftime('10/11/1984'),'M');
INSERT INTO persona VALUES (8190364,1,'EIVAR','BERGARA',strftime('01/08/1955'),'M');
INSERT INTO persona VALUES (17360310,1,'MILTON','BURGOS',strftime('20/02/1964'),'M');
INSERT INTO persona VALUES (40270715,1,'ANA','HERNANDEZ',strftime('25/07/1959'),'F');
INSERT INTO persona VALUES (2952910,1,'ANGEL','RAMIREZ',strftime('23/11/1937'),'M');
INSERT INTO persona VALUES (1127385618,4,'JHULLDER','BELTRAN',strftime('08/04/2008'),'M');
INSERT INTO persona VALUES (26632648,1,'MYRIAM','GOMEZ',strftime('15/05/1961'),'F');
INSERT INTO persona VALUES (206276711,2,'DAELLA','CARVAJAL',strftime('27/06/1992'),'F');
INSERT INTO persona VALUES (1122513211,4,'HAROLD','SANTANA',strftime('15/05/2006'),'M');
INSERT INTO persona VALUES (79600774,1,'ALEXIS','HERRERA',strftime('05/10/1972'),'M');
INSERT INTO persona VALUES (110763859,2,'ANGIE','HERRERA',strftime('07/11/1998'),'F');
INSERT INTO persona VALUES (6611537,1,'MOISES','MALDONADO',strftime('06/10/1936'),'M');
INSERT INTO persona VALUES (1192213089,4,'EMANUEL','BABATIVA',strftime('08/07/2009'),'M');
INSERT INTO persona VALUES (1127386495,4,'YEFERSSON','ROJAS',strftime('26/05/2009'),'M');
INSERT INTO persona VALUES (250344,4,'KELLY','REINO',strftime('23/05/2000'),'F');
INSERT INTO persona VALUES (12196489,1,'ALEXANDER','IBARRA',strftime('15/09/1975'),'M');
INSERT INTO persona VALUES (27385092,4,'ANLLELY','IBARRA',strftime('04/07/2007'),'F');
INSERT INTO persona VALUES (92373541,2,'JOSE','GONZALEZ',strftime('23/09/1998'),'M');
INSERT INTO persona VALUES (91106202,1,'LUIS','PRADA',strftime('22/12/1967'),'M');
INSERT INTO persona VALUES (40771163,1,'GLORIA','MEDINA',strftime('21/03/1968'),'F');
INSERT INTO persona VALUES (33001267,2,'GERSON','PRADA',strftime('30/03/1995'),'M');
INSERT INTO persona VALUES (26542999,1,'SANDRA','VARGAS',strftime('21/08/1979'),'F');
INSERT INTO persona VALUES (82154809,4,'KAREN','CASTIBLANCO',strftime('29/03/2005'),'F');
INSERT INTO persona VALUES (2213052,3,'CARLOS','RIVERA',strftime('08/01/2009'),'M');
INSERT INTO persona VALUES (17340110,1,'EDGAR','DIAZ',strftime('04/09/1967'),'M');
INSERT INTO persona VALUES (17339368,1,'HECTOR','LENIS',strftime('14/05/1967'),'M');
INSERT INTO persona VALUES (40382477,1,'LUZ','ARANA',strftime('18/01/1968'),'F');
INSERT INTO persona VALUES (21249349,1,'NUBIA','VALERO',strftime('08/06/1973'),'F');
INSERT INTO persona VALUES (86055321,1,'CARLOS','HERRERA',strftime('28/08/1971'),'M');
INSERT INTO persona VALUES (40216231,1,'JENNY','GARCIA',strftime('02/04/1982'),'F');
INSERT INTO persona VALUES (1121850975,4,'ISAIT','AMADO',strftime('02/04/2007'),'F');
INSERT INTO persona VALUES (97610314,1,'YEINER','MEDELLIN',strftime('26/12/1982'),'M');
INSERT INTO persona VALUES (30215164,1,'MARIA','GAITAN',strftime('31/12/1928'),'F');
INSERT INTO persona VALUES (21184191,1,'MARIA','ACOSTA',strftime('27/09/1934'),'M');
INSERT INTO persona VALUES (18263,1,'JOSE','GAITAN',strftime('20/07/1979'),'M');	
INSERT INTO persona VALUES (40417149,1,'JANETH','BARRETO',strftime('22/02/1977'),'F');
INSERT INTO persona VALUES (1127722566,4,' SEBASTIAN','RINCON',strftime('05/03/2006'),'M'); 
INSERT INTO persona VALUES (23836167,1,'MARTHA','PERDOMO',strftime('30/01/1969'),'F');
INSERT INTO persona VALUES (2356060,1,'HECTOR','MENDEZ',strftime('19/06/1947'),'M');
INSERT INTO persona VALUES (92122455540,2,'YORMAN','OLMOS',strftime('24/12/1992'),'M');
INSERT INTO persona VALUES (40417953,1,'MARITZA','PRIETO',strftime('06/04/1976'),'F');
INSERT INTO persona VALUES (17388376,1,'RAMON','ALARCON',strftime('09/01/1970'),'M');
INSERT INTO persona VALUES (970417088,2,'JORGE','MONCADA',strftime('17/04/1997'),'M');
INSERT INTO persona VALUES (17389974,1,'EUCLIDES','SUAREZ',strftime('04/09/1978'),'M');
INSERT INTO persona VALUES (1121816195,1,'YENNI','OLMOS',strftime('14/12/1985'),'F');
INSERT INTO persona VALUES (17388487,1,'WILSON','CACERES',strftime('20/02/1970'),'M');
INSERT INTO persona VALUES (40417370,1,'NURY','VARGAS',strftime('17/02/1974'),'F');
INSERT INTO persona VALUES (23834813,1,'MARIA','CORTES',strftime('11/07/1954'),'F');
INSERT INTO persona VALUES (93115847,1,'ARTURO','ARIAS',strftime('05/07/1958'),'M');
INSERT INTO persona VALUES (40419288,1,'SILVANA','ANGULO',strftime('05/04/1970'),'F');
INSERT INTO persona VALUES (40419253,1,'ANA','SANABRIA',strftime('25/02/1981'),'F');
INSERT INTO persona VALUES (2254679,4,'HANIA','DAJOME',strftime('07/03/1983'),'F');
INSERT INTO persona VALUES (1127385269,1,'JHON','LAGUNA',strftime('27/05/1989'),'M');
INSERT INTO persona VALUES (1082019,1,'MIGUEL','PEREZ',strftime('29/09/1934'),'M');
INSERT INTO persona VALUES (41479669,1,'LEONOR','APOLINAR',strftime('18/08/1946'),'F');
INSERT INTO persona VALUES (1052390132,4,'DAINNY','ALARCON',strftime('09/02/2008'),'F');
INSERT INTO persona VALUES (1127386763,4,'DIDIER','OROS',strftime('14/10/2009'),'M');
INSERT INTO persona VALUES (1127722954,4,'WILLIAN','GUAYABO',strftime('25/07/2007'),'M');
INSERT INTO persona VALUES (1192748086,2,'DANIEL','GARCIA',strftime('22/11/1999'),'M');
INSERT INTO persona VALUES (1127722523,4,'LUIS','BARRETO',strftime('31/01/2006'),'M');
INSERT INTO persona VALUES (1081406547,4,'JADER','BARRAGAN',strftime('05/12/2008'),'M');
INSERT INTO persona VALUES (18262730,1,'WILLIAN','SANTANA',strftime('19/12/1976'),'M');
INSERT INTO persona VALUES (86003367,1,'KENNEDY','LUGO',strftime('18/05/1962'),'M');
INSERT INTO persona VALUES (47425902,1,'NANCY','OROS',strftime('22/10/1973'),'F');
INSERT INTO persona VALUES (1010045484,2,'LILIANA','OROS',strftime('26/08/1995'),'F');	
INSERT INTO persona VALUES (2746611,1,'JESUS','BUENO',strftime('01/11/1957'),'M');	
INSERT INTO persona VALUES (41250448,1,'NINFA','GARCIA',strftime('05/07/1959'),'F');	
INSERT INTO persona VALUES (18256624,1,'FREDY','JIMENEZ',strftime('24/10/1979'),'M');
INSERT INTO persona VALUES (1127722326,4,'ELKAN','OROS',strftime('05/03/2004'),'M');	
INSERT INTO persona VALUES (1127385785,1,'WILLIAN','GUAYABO',strftime('29/06/1990'),'M');	
INSERT INTO persona VALUES (9307252,2,'EDIER','GARCIA',strftime('25/07/1993'),'M');	
INSERT INTO persona VALUES (1192748085,2,'KEILA','GARCIA',strftime('22/04/1997'),'F');	
INSERT INTO persona VALUES (1010080473,1,'ELKIN','SANCHEZ',strftime('29/06/1989'),'M');	
INSERT INTO persona VALUES (55212231,1,'EDITH','GOMEZ',strftime('22/05/1980'),'F');	
INSERT INTO persona VALUES (18263392,1,'JULIO','SANABRIA',strftime('18/04/1982'),'M');
INSERT INTO persona VALUES (1127722565,4,'CARLOS','SANTANA',strftime('12/04/2005'),'M');	
INSERT INTO persona VALUES (30937299,1,'MARIA','SANCHEZ',strftime('25/07/1978'),'F');	
INSERT INTO persona VALUES (1127722513,4,'WESLER','LUGO',strftime('06/01/2006'),'M');	
INSERT INTO persona VALUES (1122722735,1,'MARLLURY','TOVAR',strftime('28/04/1985'),'F');	
INSERT INTO persona VALUES (1105611093,4,'ANYHI','CASTILLA',strftime('18/03/2005'),'F');	
INSERT INTO persona VALUES (4186277,1,'AQUILINO','SIERRA',strftime('19/11/1952'),'M');	
INSERT INTO persona VALUES (1010081989,2,'SOLANLLI','SIERRA',strftime('29/03/1996'),'F');	
INSERT INTO persona VALUES (1120865708,1,'GLORI','JIMENEZ',strftime('13/09/1986'),'F');	
INSERT INTO persona VALUES (86050207,1,'JHON','GOMEZ',strftime('08/03/1976'),'M');

CREATE TABLE historialpersona
(
idhistorialpersona INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT ,
idpersona INTEGER NOT NULL,
fechaingreso date NOT NULL,
fecharetiro date NULL,
estadopersona char NOT NULL,
ideps INTEGER NOT NULL,
tipoafiliado INTEGER NOT NULL);

INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (769086765,	1, 1,strftime('01/11/2004'),strftime('01/04/2010'),'I');

INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1057583006,4, 1,strftime('01/10/2007'),strftime('01/07/2009'),'I');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (52158989,	4, 1,strftime('04/09/2007'),strftime('01/04/2009'),'I');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1026553762,4, 4,strftime('01/07/2007'),strftime('01/04/2008'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (65799510,	1, 1,strftime('01/02/2009'),strftime('01/04/2009'),'I');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (52377972,	4, 4,strftime('15/06/2006'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (250025,	2, 1,strftime('20/09/2001'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (7276950,	1, 4,strftime('01/12/1999'),strftime('01/04/2003'),'I');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1127722084,1, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1127722591,2, 2,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (990014705,	1, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (990014543,	8, 1,strftime('01/12/2009'),strftime('01/04/2010'),'I');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (9267617,	4, 5,strftime('01/12/2009'),strftime('01/04/2010'),'A');

INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1126704602,5, 2,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (103251438,	2, 4,strftime('01/10/2008'),strftime('30/09/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (96195585,	4, 4,strftime('01/10/2008'),strftime('30/09/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (8190364,	5, 1,strftime('28/05/2008'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (17360310,	7, 1,strftime('01/10/2008'),strftime('30/09/2010'),'I');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (40270715,	8, 1,strftime('01/10/2008'),strftime('30/06/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (2952910,	3, 2,strftime('01/10/2008'),strftime('30/09/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1127385618,6, 1,strftime('25/09/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (26632648,	1, 1,strftime('01/04/2001'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (206276711,	2, 1,strftime('05/02/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1122513211,4, 4,strftime('07/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (79600774,	5, 1,strftime('19/11/2009'),strftime('30/09/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (110763859,	6, 5,strftime('19/11/2009'),strftime('30/09/2010'),'A');

INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (6611537,	6, 2,strftime('01/10/2007'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1192213089,3, 1,strftime('06/08/2009'),strftime('30/09/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1127386495,4, 1,strftime('20/06/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (250344,	9, 1,strftime('01/06/2004'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (12196489,	5, 1,strftime('10/09/2008'),strftime('01/04/2009'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (27385092,	7, 1,strftime('10/09/2008'),strftime('01/04/2009'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (92373541,	8, 1,strftime('09/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (91106202,	5, 1,strftime('13/09/2007'),strftime('30/09/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (40771163,	3, 1,strftime('01/06/2004'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (33001267,	4, 4,strftime('01/06/2004'),strftime('30/09/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (26542999,	6, 1,strftime('15/12/2005'),strftime('01/10/2009'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (82154809,	7, 1,strftime('15/12/2005'),strftime('01/10/2009'),'I');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (2213052,	2, 1,strftime('13/01/2009'),strftime('30/09/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (17340110,	3, 4,strftime('01/04/2005'),strftime('01/04/2010'),'A');

INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (17339368,	5, 4,strftime('01/12/2005'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (40382477,	6, 4,strftime('01/04/2004'),strftime('01/10/2009'),'I');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (21249349,	7, 2,strftime('01/04/2005'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (86055321,	8, 4,strftime('16/12/2001'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (40216231,	9, 4,strftime('16/12/2001'),strftime('16/12/2011'),'I');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1121850975,3, 5,strftime('12/07/2007'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (97610314,	2, 1,strftime('20/12/2006'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (30215164,	1, 4,strftime('23/08/2007'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (21184191,	3, 4,strftime('01/10/2007'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (18263255,	4, 4,strftime('23/08/2007'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (40417149,	5, 1,strftime('22/01/2000'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1127722566,6, 4,strftime('31/03/2007'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (23836167,	7, 2,strftime('01/10/2004'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (2356060,	8, 1,strftime('01/04/2005'),strftime('01/04/2010'),'A');

INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (92122455540,9,1,strftime('01/04/2005'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (40417953,	4, 2,strftime('01/04/2005'),strftime('30/09/2010'),'I');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (17388376,	2, 1,strftime('01/04/2000'),strftime('30/09/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (97041708828,12,4,strftime('01/04/2000'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (17389974,	11,3,strftime('01/04/1998'),strftime('01/10/2009'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1121816195,3, 1,strftime('01/04/2000'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (17388487,	4, 1,strftime('01/04/2000'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (40417370,	5, 1,strftime('01/04/2000'),strftime('01/06/2002'),'I');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (23834813,	6, 1,strftime('01/04/2000'),strftime('01/10/2009'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (93115847,	7, 1,strftime('01/04/2005'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (40419288,	8, 1,strftime('01/04/2005'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (40419253,	5, 5,strftime('20/04/2007'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (2254679,	6, 5,strftime('01/04/2001'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1127385269,13,1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1082019,	3, 4,strftime('01/12/2009'),strftime('01/04/2010'),'A');

INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (41479669,	4, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1052390132,2, 4,strftime('15/04/2008'),strftime('01/04/2009'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1127386763,6, 4,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1127722954,4, 3,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1192748086,14,3,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1127722523,5, 4,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1081406547,7, 4,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (18262730,	3, 2,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (86003367,	9, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (47425902,	4, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1010045484,4, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (2746611,	7, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (41250448,	4, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (18256624,	5, 4,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1127722326,7, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1127385785,2, 2,strftime('01/12/2009'),strftime('01/04/2010'),'A');

INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (9307252,4,4,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1192748085,5, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1010080473,8, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (55212231,	9, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (18263392,	5, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1127722565,4, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (30937299,	6, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1127722513,7, 4,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1122722735,3, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1105611093,2, 4,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (4186277,	1, 5,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1010081989,6, 3,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (1120865708,7, 2,strftime('01/12/2009'),strftime('01/04/2010'),'A');
INSERT INTO historialpersona (idpersona,ideps,tipoafiliado,fechaingreso,fecharetiro,estadopersona) VALUES (86050207,	8, 1,strftime('01/12/2009'),strftime('01/04/2010'),'A');
	
CREATE TABLE servicioeps
(
ideps INTEGER NOT NULL,
idtiposervicio INTEGER NOT NULL,
estado VARCHAR(255)  NOT NULL,
valor INTEGER NOT NULL,
detalle VARCHAR(255)  NULL,
CONSTRAINT pk_servicioseps PRIMARY KEY (ideps, idtiposervicio)
);

INSERT INTO servicioeps VALUES (1,1,'A',56000,'COPAGO');
INSERT INTO servicioeps VALUES (1,2,'A',28000,'COPAGO');
INSERT INTO servicioeps VALUES (1,3,'I',36000,'COPAGO');
INSERT INTO servicioeps VALUES (1,4,'A',156000,'CIRUGIA');
INSERT INTO servicioeps VALUES (1,5,'I',256000,'COPAGO');
INSERT INTO servicioeps VALUES (1,6,'A',556000,'COPAGO');
INSERT INTO servicioeps VALUES (1,7,'I',78000,'COPAGO');
INSERT INTO servicioeps VALUES (1,8,'A',6000,'COPAGO');
INSERT INTO servicioeps VALUES (1,9,'A',76000,'COPAGO');
INSERT INTO servicioeps VALUES (1,10,'I',96000,'COPAGO');

INSERT INTO servicioeps VALUES (2,1,'A',56000,'COPAGO');
INSERT INTO servicioeps VALUES (2,2,'A',28000,'CIRUGIA');
INSERT INTO servicioeps VALUES (2,3,'I',36000,'COPAGO');
INSERT INTO servicioeps VALUES (2,4,'A',156000,'CIRUGIA');
INSERT INTO servicioeps VALUES (2,5,'I',256000,'COPAGO');
INSERT INTO servicioeps VALUES (2,6,'A',556000,'CIRUGIA');
INSERT INTO servicioeps VALUES (2,7,'I',78000,'COPAGO');
INSERT INTO servicioeps VALUES (2,8,'A',6000,'COPAGO');
INSERT INTO servicioeps VALUES (2,9,'A',76000,'COPAGO');
INSERT INTO servicioeps VALUES (2,10,'I',96000,'COPAGO');

INSERT INTO servicioeps VALUES (3,1,'A',56000,'COPAGO');
INSERT INTO servicioeps VALUES (3,2,'A',28000,'COPAGO');
INSERT INTO servicioeps VALUES (3,3,'I',36000,'COPAGO');
INSERT INTO servicioeps VALUES (3,4,'A',156000,'CIRUGIA');
INSERT INTO servicioeps VALUES (3,5,'I',256000,'CIRUGIA');
INSERT INTO servicioeps VALUES (3,6,'A',556000,'CIRUGIA');
INSERT INTO servicioeps VALUES (3,7,'I',78000,'CIRUGIA');
INSERT INTO servicioeps VALUES (3,8,'A',6000,'COPAGO');
INSERT INTO servicioeps VALUES (3,9,'A',76000,'COPAGO');
INSERT INTO servicioeps VALUES (3,10,'I',96000,'CIRUGIA');

INSERT INTO servicioeps VALUES (4,1,'I',56000,'COPAGO');
INSERT INTO servicioeps VALUES (4,2,'A',28000,'COPAGO');
INSERT INTO servicioeps VALUES (4,3,'I',36000,'COPAGO');
INSERT INTO servicioeps VALUES (4,4,'I',156000,'COPAGO');
INSERT INTO servicioeps VALUES (4,5,'I',256000,'COPAGO');
INSERT INTO servicioeps VALUES (4,6,'I',556000,'CIRUGIA');
INSERT INTO servicioeps VALUES (4,7,'A',78000,'COPAGO');
INSERT INTO servicioeps VALUES (4,8,'A',6000,'COPAGO');
INSERT INTO servicioeps VALUES (4,9,'I',76000,'COPAGO');
INSERT INTO servicioeps VALUES (4,10,'I',96000,'COPAGO');

INSERT INTO servicioeps VALUES (5,1,'I',56000,'COPAGO');
INSERT INTO servicioeps VALUES (5,2,'A',28000,'COPAGO');
INSERT INTO servicioeps VALUES (5,3,'I',36000,'COPAGO');
INSERT INTO servicioeps VALUES (5,4,'I',156000,'COPAGO');
INSERT INTO servicioeps VALUES (5,5,'I',256000,'CIRUGIA');
INSERT INTO servicioeps VALUES (5,6,'I',556000,'COPAGO');
INSERT INTO servicioeps VALUES (5,7,'A',78000,'COPAGO');
INSERT INTO servicioeps VALUES (5,8,'A',6000,'COPAGO');
INSERT INTO servicioeps VALUES (5,9,'I',76000,'COPAGO');
INSERT INTO servicioeps VALUES (5,10,'I',96000,'COPAGO');

INSERT INTO servicioeps VALUES (6,1,'A',56000,'COPAGO');
INSERT INTO servicioeps VALUES (6,2,'A',28000,'COPAGO');
INSERT INTO servicioeps VALUES (6,3,'A',36000,'COPAGO');
INSERT INTO servicioeps VALUES (6,4,'I',156000,'CIRUGIA');
INSERT INTO servicioeps VALUES (6,5,'I',256000,'CIRUGIA');
INSERT INTO servicioeps VALUES (6,6,'A',556000,'CIRUGIA');
INSERT INTO servicioeps VALUES (6,7,'A',78000,'COPAGO');
INSERT INTO servicioeps VALUES (6,8,'I',6000,'COPAGO');
INSERT INTO servicioeps VALUES (6,9,'I',76000,'COPAGO');
INSERT INTO servicioeps VALUES (6,10,'A',96000,'COPAGO');

INSERT INTO servicioeps VALUES (7,1,'A',56000,'COPAGO');
INSERT INTO servicioeps VALUES (7,2,'A',28000,'COPAGO');
INSERT INTO servicioeps VALUES (7,3,'A',36000,'COPAGO');
INSERT INTO servicioeps VALUES (7,4,'I',156000,'COPAGO');
INSERT INTO servicioeps VALUES (7,5,'I',256000,'CIRUGIA');
INSERT INTO servicioeps VALUES (7,6,'A',556000,'CIRUGIA');
INSERT INTO servicioeps VALUES (7,7,'A',78000,'COPAGO');
INSERT INTO servicioeps VALUES (7,8,'I',6000,'COPAGO');
INSERT INTO servicioeps VALUES (7,9,'I',76000,'COPAGO');
INSERT INTO servicioeps VALUES (7,10,'A',96000,'COPAGO');

INSERT INTO servicioeps VALUES (8,1,'A',56000,'COPAGO');
INSERT INTO servicioeps VALUES (8,2,'A',28000,'COPAGO');
INSERT INTO servicioeps VALUES (8,3,'A',36000,'COPAGO');
INSERT INTO servicioeps VALUES (8,4,'I',156000,'COPAGO');
INSERT INTO servicioeps VALUES (8,5,'I',256000,'ADICIONAL');
INSERT INTO servicioeps VALUES (8,6,'A',556000,'ADICIONAL');
INSERT INTO servicioeps VALUES (8,7,'A',78000,'COPAGO');
INSERT INTO servicioeps VALUES (8,8,'I',6000,'COPAGO');
INSERT INTO servicioeps VALUES (8,9,'I',76000,'COPAGO');
INSERT INTO servicioeps VALUES (8,10,'A',96000,'COPAGO');

INSERT INTO servicioeps VALUES (9,1,'A',56000,'COPAGO');
INSERT INTO servicioeps VALUES (9,2,'A',28000,'COPAGO');
INSERT INTO servicioeps VALUES (9,3,'A',36000,'COPAGO');
INSERT INTO servicioeps VALUES (9,4,'I',156000,'COPAGO');
INSERT INTO servicioeps VALUES (9,5,'I',256000,'ADICIONAL');
INSERT INTO servicioeps VALUES (9,6,'A',556000,'ADICIONAL');
INSERT INTO servicioeps VALUES (9,7,'A',78000,'COPAGO');
INSERT INTO servicioeps VALUES (9,8,'I',6000,'COPAGO');
INSERT INTO servicioeps VALUES (9,9,'I',76000,'COPAGO');
INSERT INTO servicioeps VALUES (9,10,'A',96000,'COPAGO');

INSERT INTO servicioeps VALUES (10,1,'A',56000,'COPAGO');
INSERT INTO servicioeps VALUES (10,2,'A',28000,'COPAGO');
INSERT INTO servicioeps VALUES (10,3,'A',36000,'COPAGO');
INSERT INTO servicioeps VALUES (10,4,'I',156000,'COPAGO');
INSERT INTO servicioeps VALUES (10,5,'I',256000,'ADICIONAL');
INSERT INTO servicioeps VALUES (10,6,'A',556000,'ADICIONAL');
INSERT INTO servicioeps VALUES (10,7,'A',78000,'COPAGO');
INSERT INTO servicioeps VALUES (10,8,'I',6000,'COPAGO');
INSERT INTO servicioeps VALUES (10,9,'I',76000,'COPAGO');
INSERT INTO servicioeps VALUES (10,10,'A',96000,'COPAGO');

CREATE VIEW SALUD AS
SELECT 'EPS' TABLA, COUNT(*) CANTIDAD FROM EPS
UNION
SELECT 'ESTADOEPS' TABLA, COUNT(*) CANTIDAD FROM ESTADOEPS
UNION
SELECT 'ESTADOPERSONA' TABLA, COUNT(*) CANTIDAD FROM ESTADOPERSONA
UNION
SELECT 'HISTORIALPERSONA' TABLA, COUNT(*) CANTIDAD FROM HISTORIALPERSONA
UNION
SELECT 'PERSONA' TABLA, COUNT(*) CANTIDAD FROM PERSONA
UNION
SELECT 'SERVICIOEPS' TABLA, COUNT(*) CANTIDAD FROM SERVICIOEPS
UNION
SELECT 'TIPOAFILIADO' TABLA, COUNT(*) CANTIDAD FROM TIPOAFILIADO
UNION
SELECT 'TIPOIDENTIFICACION' TABLA, COUNT(*) CANTIDAD FROM TIPOIDENTIFICACION
UNION
SELECT 'TIPOSERVICIO' TABLA, COUNT(*) CANTIDAD FROM TIPOSERVICIO;
