CREATE TABLE USUARIOS (  
    ID_USUARIO INT NOT NULL AUTO_INCREMENT,
   NOMBRE VARCHAR(100) NOT NULL ,
    EMAIL VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID_USUARIO)
) ;

CREATE TABLE NOTAS (
    ID_NOTA INT NOT NULL AUTO_INCREMENT,
    TITULO VARCHAR(100) NOT NULL,
    CREATED_AT DATE NOT NULL,
    UPDATED_AT DATE NULL,
    DELETED_AT DATE NULL,
    EXPLICACION TEXT,
    ID_USUARIO INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (ID_NOTA),
    FOREIGN KEY(ID_USUARIO) REFERENCES USUARIOS (ID_USUARIO)
);

CREATE TABLE CATEGORIAS (
    ID_CATEGORIA INT AUTO_INCREMENT,
    NOMBRE_CATEGORIA VARCHAR(40) NOT NULL,
    ID_CATEGORIA_NOTA INT AUTO_INCREMENT,
    PRIMARY KEY (ID_CATEGORIA),
    FOREING KEY (ID_CATEGORIA_NOTA) REFERENCES CATEGORIAS_NOTAS (ID_CATEGORIA_NOTA)
);

CREATE TABLE CATEGORIAS_NOTAS (
    ID_CATEGORIA_NOTA INT AUTO_INCREMENT,
    ID_CATEGORIA INT AUTO_INCREMENT,
    PRIMARY KEY (ID_CATEGORIA_NOTA),
    FOREIGN KEY (ID_NOTA) REFERENCES NOTAS (ID_NOTA),
    FOREIGN KEY (ID_CATEGORIA) REFERENCES CATEGORIAS
);

INSERT INTO USUARIOS (ID_USUARIO, NOMBRE, EMAIL)
VALUES (1, 'Marcelo Barovero', 'marcelobarovero@gmail.com'), (2, 'Jonathan Maidana', 'jonathanmaidana@gmail.com'),
(3, 'Lionel Vangioni', 'lionelvangioni@gmail.com'), (4, 'Gabriel Mercado', 'gabrielmercado@gmail.com'),
(5, 'Leonardo Ponzio', 'leoponzio@gmail.com'), (6, 'Ramiro Funes Mori', 'ramirofunesmori@gmail.com'),
(7, 'Leonardo Pisculichi', 'leopiscu@gmail.com'), (8, 'Carlos Sanchez', 'carlossanchez@gmail.com'),
(9 , 'Fernando Cavenaghi', 'fercave@gmail.com'), (10, 'Gonzalo Martinez', 'pitymartinez@gmail.com');

INSERT INTO NOTAS (ID_NOTA, TITULO, CREATED_AT, UPDATED_AT, DELETED_AT, EXPLICACION, ID_USUARIO)
VALUES (1, 'San Martin', 20/02/2019, 25/02/2019, NULL, 'Explicacion 1', 10), (2, 'PSG', 20/03/2019, 25/03/2019, NULL, 'Explicacion 2', 9),
(3, 'Remera', 20/04/2019, 25/04/2019, NULL, 'Explicacion 3', 8), (4, 'Verde', 20/05/2019, 25/05/2019, NULL, 'Explicacion 4', 7),
(5, 'Bitcoin', 20/06/2019, 25/06/2019, NULL, 'Explicacion 5', 6), (6, 'Sierra', 20/07/2019, 25/07/2019, NULL, 'Explicacion 6', 5),
(7, 'Madrid', 20/08/2019, 25/08/2019, NULL, 'Explicacion 7', 4), (8, 'Manzana', 20/09/2019, 25/09/2019, NULL, 'Explicacion 8', 3),
(9, 'UBA', 20/10/2019, 25/10/2019, NULL, 'Explicacion 9', 2), (10, 'Ingles', 20/11/2019, 25/11/2019, NULL, 'Explicacion 10', 1);

INSERT INTO CATEGORIAS (ID_CATEGORIA, NOMBRE_CATEGORIA)
VALUES (1, 'Proceres'), (2, 'Equipos'), (3, 'Ropa'), (4, 'Colores'), (5, 'Criptomonedas'),
(6, 'Geografia'), (7, 'Capitales'), (8, 'Frutas'), (9, 'Instituciones'), (10, 'Idiomas');

INSERT INTO CATEGORIAS_NOTAS (ID_CATEGORIA_NOTA, ID_CATEGORIA, ID_NOTA)
VALUES (DEFAULT, 1, 1), (DEFAULT, 2, 2), (DEFAULT, 3, 3), (DEFAULT, 4, 4), (DEFAULT, 5, 5),
(DEFAULT, 6, 6), (DEFAULT, 7, 7), (DEFAULT, 8, 8), (DEFAULT, 9, 9), (DEFAULT, 10, 10);