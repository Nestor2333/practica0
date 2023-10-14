use 005test;

CREATE TABLE guerra( 
id INT, 
nombre VARCHAR (30), 
f_inicio DATE, 
f_fin DATE 
) 
 
 
CREATE TABLE alianzas( 
id INT, 
alianza VARCHAR (30), 
guerra_id INT 
) 
 
 
CREATE TABLE paises( 
id INT, 
País VARCHAR(30), 
alianza_id INT 
) 
 
 
 
 
 
 
INSERT INTO guerra (id, nombre, f_inicio, f_fin) 
VALUES (1,"Primera Guerra Mundial", "1914-07-28", "1918-11-11"); 
 
 
INSERT INTO guerra (id, nombre, f_inicio, f_fin) 
VALUES (2,"Segunda Guerra Mundial", "1939-09-01", "1945-09-02"); 
 
 
 
 
INSERT INTO alianzas 
VALUES (1,"Potencias centrales",1) ;
 
 
INSERT INTO alianzas 
VALUES (2,"Aliados",1);
 
 
INSERT INTO alianzas 
VALUES (2,"Aliados",2); 
 

INSERT INTO alianzas  
VALUES (3, "Potencias del Eje",2); 
 
 
DELETE FROM alianzas  
WHERE id=2 ;
 
 
INSERT INTO paises  
VALUES (1,"Imperio austrohúngaro",1); 
 
 
INSERT INTO paises  
VALUES (2,"Alemania",1) ;
 
INSERT INTO paises  
VALUES (3,"Imperio otomano",1); 
 
 
INSERT INTO paises  
VALUES (4,"Reino de Bulgaria",1); 
 
 
INSERT INTO paises  
VALUES (5, "Francia",2); 
 
 
INSERT INTO paises  
VALUES (6,"Imperio Británico",2); 
 
 
INSERT INTO paises  
VALUES (7,"Imperio ruso",2) ;
 
 
INSERT INTO paises 
VALUES (8,"Reino de Italia",2); 
 
 
INSERT INTO paises  
VALUES (9,"Luxemburgo",2); 
 
 
INSERT INTO paises  
VALUES (10,"Estados Unidos",2) ;
 
 
INSERT INTO paises  
VALUES (2,"Alemania",3); 
 
INSERT INTO paises 
VALUES (8,"Reino de Italia",3); 

#crear modelo relacional
SELECT nombre, f_inicio, f_fin, alianza, País 
FROM guerra g 
INNER JOIN alianzas a ON g.id = a.guerra_id 
INNER JOIN paises p ON a.id = p.alianza_id; 
 
 