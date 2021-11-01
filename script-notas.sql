CREATE TABLE `usuarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(255) NOT NULL,
   `email` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `título` VARCHAR(100) NOT NULL,
   `fecha_de_creación` DATE NOT NULL,
   `fecha_última_modificación` DATE NOT NULL,
   `descripción` TEXT NOT NULL,
   `puede_eliminarse` TINYINT NOT NULL,
   `id_usuario` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categorías` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `categoría` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `nota_categoria` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `id_nota` INT NOT NULL,
   `id_categoría` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_b5d1f7c3-a68d-4b23-973c-04b57719410b` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios`(`id`)  ;

ALTER TABLE `nota_categoria` ADD CONSTRAINT `FK_1d70fcf1-75b4-41d3-aeaa-92ca5ed928f9` FOREIGN KEY (`id_nota`) REFERENCES `notas`(`id`)  ;

ALTER TABLE `nota_categoria` ADD CONSTRAINT `FK_dcd530a4-e856-4dd4-807d-65815aad9e16` FOREIGN KEY (`id_categoría`) REFERENCES `categorías`(`id`)  ;



insert into usuarios values (DEFAULT, 'Dorothee Milliken', 'dmilliken0@adobe.com'),(DEFAULT, 'Theresina Fosken', 'tfosken1@mail.ru'),(DEFAULT, 'Chickie Baird', 'cbaird2@adobe.com'),(DEFAULT, 'Gwendolen De la Feld', 'gde3@mozilla.org'),(DEFAULT, 'Donelle Guswell', 'dguswell4@phoca.cz'),(DEFAULT, 'Daryn Marjanovic', 'dmarjanovic5@amazonaws.com'),(DEFAULT, 'Mallissa Pittle', 'mpittle6@nydailynews.com'),(DEFAULT, 'Sada Spinks', 'sspinks7@timesonline.co.uk'),(DEFAULT, 'Nero Broadberry', 'nbroadberry8@timesonline.co.uk'),(DEFAULT, 'Maurita Tiebe', 'mtiebe9@sbwire.com');

insert into notas values (DEFAULT, 'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat', '2021-10-13', '2021-11-21', 'cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing', 0, 7),(DEFAULT, 'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis', '2021-10-11', '2021-11-18', 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros', 1, 7),(DEFAULT, 'fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis', '2021-10-27', '2021-11-03', 'in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', 0, 10), (DEFAULT, 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum', '2021-10-03', '2021-11-13', 'non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis', 1, 7),(DEFAULT, 'id consequat in consequat ut nulla sed accumsan felis ut at', '2021-10-16', '2021-11-04', 'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', 1, 3),(DEFAULT, 'gravida nisi at nibh in hac habitasse platea dictumst aliquam', '2021-10-23', '2021-11-02', 'purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in', 1, 4),(DEFAULT, 'ac diam cras pellentesque volutpat dui maecenas tristique est et', '2021-10-24', '2021-11-11', 'lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue', 0, 9),(DEFAULT, 'duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti', '2021-10-16', '2021-11-24', 'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet', 0, 5),(DEFAULT, 'ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in', '2021-10-23', '2021-11-25', 'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in', 0, 10),(DEFAULT, 'vestibulum velit id pretium iaculis diam erat fermentum justo nec', '2021-10-19', '2021-11-23', 'neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et', 1, 6);

insert into categorías values (DEFAULT, 'Cocina'),(DEFAULT, 'Musica'),(DEFAULT, 'Juegos'),(DEFAULT, 'Peliculas'),(DEFAULT, 'Trabajo'),(DEFAULT, 'Compras'),(DEFAULT, 'Indumentaria'),(DEFAULT, 'Actividades'),(DEFAULT, 'Listado'),(DEFAULT, 'Libros');

insert into nota_categoria values (DEFAULT, 8, 5),(DEFAULT, 1, 3),(DEFAULT, 7, 4),(DEFAULT, 3, 1),(DEFAULT, 4, 1),(DEFAULT, 5, 8),(DEFAULT, 6, 2),(DEFAULT, 2, 6),(DEFAULT, 3, 10),(DEFAULT, 8, 2);




