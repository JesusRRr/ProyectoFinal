# ProyectoFinal
Visualizar el proyecto utilizando un navegador web


# Base de datos 
### Creación de la base de datos CentroSalud
create database CentroSalud;

### tabla usuario
create table Usuario(
	idUsuario int auto_increment primary key,
    nombreUsuario varchar(45),
    emailUsuario varchar(45),
    passUsuario varchar(45)
);

### tabla citas

create table Citas(
	idCita int auto_increment not null primary key,
	fecha varchar(45),
    idUsuario int,
    foreign key(idUsuario) references Usuario(idUsuario)
);
