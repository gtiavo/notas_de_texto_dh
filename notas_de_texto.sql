CREATE DATABASE notas_de_texto_dh;

 
/* TABLA USUARIOS  */

CREATE TABLE usuarios (
 id INT unsigned  PRIMARY KEY auto_increment,
 nombre_usuario VARCHAR(100) NOT NULL,
 apellido_usuario VARCHAR(100) NOT NULL,
 email_usuario VARCHAR(500) NOT NULL
 );

INSERT INTO usuarios (id, nombre_usuario, apellido_usuario, email_usuario)
VALUES (DEFAULT, 'Gustavo', 'Avila', 'gusti@gmail.com');

INSERT INTO usuarios (id, nombre_usuario, apellido_usuario, email_usuario)
VALUES (DEFAULT, 'Hector', 'Benitez', 'benitezhec@gmail.com');

INSERT INTO usuarios (id, nombre_usuario, apellido_usuario, email_usuario)
VALUES (DEFAULT, 'Maximiliano', 'Stibel', 'stibelm@gmail.com');

INSERT INTO usuarios (id, nombre_usuario, apellido_usuario, email_usuario)
VALUES (DEFAULT, 'Leandro', 'Gross', 'grosslean@gmail.com');

INSERT INTO usuarios (id, nombre_usuario, apellido_usuario, email_usuario)
VALUES (DEFAULT, 'Silvina', 'Raggio', 'raggiosil@gmail.com');

INSERT INTO usuarios (id, nombre_usuario, apellido_usuario, email_usuario)
VALUES (DEFAULT, 'Fernado', 'Rubial', 'rubialacade@gmail.com');

INSERT INTO usuarios (id, nombre_usuario, apellido_usuario, email_usuario)
VALUES (DEFAULT, 'Roxana', 'Guerra', 'guerraroxx@gmail.com');

INSERT INTO usuarios (id, nombre_usuario, apellido_usuario, email_usuario)
VALUES (DEFAULT, 'Natalia', 'Rodriguez', 'natynaty@gmail.com');

INSERT INTO usuarios (id, nombre_usuario, apellido_usuario, email_usuario)
VALUES (DEFAULT, 'Samanta', 'Lopez', 'lopezsamy@gmail.com');

INSERT INTO usuarios (id, nombre_usuario, apellido_usuario, email_usuario)
VALUES (DEFAULT, 'Andres', 'Gomez', 'gomezanrews@gmail.com');






/* TABLA CATEGORIAS  */

CREATE TABLE categorias(
id  INT unsigned PRIMARY KEY auto_increment,
nombre_categoria VARCHAR(100) NOT NULL
);

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, 'Ciencia');

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, 'Política');

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, 'Literatura');

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, 'Poesía');

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, 'Música');

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, 'Viaje');

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, 'Cultura General');

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, 'Naturaleza');

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, 'Autoayuda');

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, 'cine');



/* TABLA NOTAS  */


  CREATE TABLE notas (
 id INT unsigned PRIMARY KEY auto_increment,
 titulo VARCHAR(100) NOT NULL,
 fecha_de_creacion DATETIME DEFAULT NOW() NOT NULL,
 fecha_ultima_modificacion DATETIME DEFAULT NOW() NULL,
 descripcion TEXT,
 mantener TINYINT,
 id_usuario INT unsigned,
 FOREIGN KEY (id_usuario) REFERENCES notas_de_texto_dh.usuarios(id)
 );

INSERT INTO notas (id,titulo,fecha_de_creacion,descripcion, mantener,id_usuario )
VALUES (DEFAULT, 'Mirada al horizonte',DEFAULT,'La única regla del viaje es: no vuelvas como te fuiste. Vuelve diferente', 1, 1 );

INSERT INTO notas (id,titulo,descripcion, mantener,id_usuario )
VALUES (DEFAULT, 'Vivir para viajar' ,'Un viaje se vive 3 veces: cuando lo soñamos, cuando lo vivimos y cuando lo recordamos',
1, 3);

INSERT INTO notas (id,titulo,descripcion, mantener,id_usuario )
VALUES (DEFAULT, 'Medicina política','La política es el arte de buscar problemas, encontrarlos, hacer un diagnóstico falso y aplicar después los remedios equivocados.',
0, 3);

INSERT INTO notas (id,titulo,descripcion, mantener,id_usuario )
VALUES (DEFAULT, 'La semantica politica', 'Cuanto más siniestros son los deseos de un político, más pomposa, en general, se vuelve la nobleza de su lenguaje.',
0, 3);

INSERT INTO notas (id,titulo,descripcion, mantener,id_usuario )
VALUES (DEFAULT, 'Aquí', 'Mis pasos en esta calle Resuenan En otra calle Donde Oigo mis pasos Pasar en esta calle Donde Sólo es real la niebla.',
1, 5);

INSERT INTO notas (id,titulo,descripcion, mantener,id_usuario )
VALUES (DEFAULT, 'Cada vez que pienso en ti', 'Cada vez que pienso en ti, mis ojos rompen en llanto; y muy triste me pregunto, ¿por qué te quiero tanto?',
1,5);

INSERT INTO notas (id,titulo,descripcion, mantener,id_usuario )
VALUES (DEFAULT, ' León Gieco, fracmento', 'Sólo le pido a dios que el dolor no me sea indiferente, que la reseca muerte no me encuentre vacío y solo sin haber hecho lo suficiente. ',
0,4);

INSERT INTO notas (id,titulo,descripcion, mantener,id_usuario )
VALUES(DEFAULT, ' Almendra, fragmento', 'Sueña un sueño despacito entre mis manos hasta que por la ventana suba el sol. Muchacha piel de rayón, no corras más. Tu tiempo es hoy.',
0,4);

INSERT INTO notas (id,titulo,descripcion, mantener,id_usuario )
VALUES (DEFAULT, 'Albert Einstein, fragmento', '¿Por qué esta magnífica tecnología científica, que ahorra trabajo y nos hace la vida más fácil, nos aporta tan poca felicidad? La repuesta es está, simplemente: porque aún no hemos aprendido a usarla con acierto. ',
0,1);

INSERT INTO notas (id,titulo,descripcion, mantener,id_usuario )
VALUES (DEFAULT, 'Matrix 4', 'El tráiler empieza con un Reeves barbudo que busca la guía de un psiquiatra con gafas INTerpretado por Neil Patrick Harris, de la serie How I Met Your Mother.
El personaje de Reeves dice que está teniendo sueños que parecen aludir al pasado de Neo como la figura mesiánica de un movimiento de resistencia en guerra con la INTeligencia artificial detrás de The Matrix.
Reeves, a quien Harris llama Thomas, parece ajeno a la verdad que Neo aprendió en la primera película: que el mundo que conoce es una simulación sofisticada creada por computadora.
Pero se da cuenta de que algo está pasando mientras toma un ascensor, estudia su reflejo en un espejo y se sienta en una bañera con un pato amarillo de plástico posado en su cabeza.',
0, 9 )




/* TABLA INTERMEDIA */

CREATE TABLE notas_categorias(
id  INT unsigned PRIMARY KEY auto_increment,
id_notas INT unsigned,
id_categoria INT unsigned,
FOREIGN KEY (id_categoria) REFERENCES notas_de_texto_dh.categorias(id),
FOREIGN KEY (id_notas) REFERENCES notas_de_texto_dh.notas(id)
);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,1,6);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,1,9);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,2,9);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,2,6);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,3,2);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,4,2);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,4,3);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,5,4);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,5,3);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,6,3);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,6,4);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,6,9);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,7,4);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,7,5);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,8,5);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,8,4);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,9,1);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,9,2);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,9,10);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,10,10);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,10,5);

INSERT INTO notas_categorias(id, id_notas, id_categoria)
VALUES (DEFAULT,10,1);


-- SISTEMA PARA BORRAR NOTAS, UTILIZANDO EL 1 Y EL 0 COMO TRUE Y FALSE --
/*delete from notas 
where id_usuario = 3 and mantener = 0;*/

