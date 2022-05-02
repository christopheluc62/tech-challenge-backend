CREATE DATABASE wild;
USE wild;

CREATE TABLE `crew` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  PRIMARY KEY(`id`)
);

INSERT INTO crew (id,firstname) VALUES (1,'Latinos'),(2,'Pomelos'),(3,'Bricolos'),(4,'Aficionados'),(5,'Cassos'),(6,'Gigolos'),(7,'Tacos'),(8,'Mosquitos'),(9,'Amigos'),(10,'Speculos'),(11,'Albinos'),(12,'Tetanos'),(13,'Chorizos'),(14,'Rapidos'),(15,'Kimonos'),(16,'Burritos'),(17,'Bogos'),(18,'Musicos');