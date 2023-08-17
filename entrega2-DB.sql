create database concesionario

create table automoviles (
	id_automovil int identity(1, 1) not null,
	modelo int not null,
	disponiblidad varchar(55) not null,
);

create table modelo (
	id_modelo int identity (1, 1) not null,
	marca varchar(55) not null,
	ref_modelo varchar(55) not null,
	ref_vehiculo varchar(55) not null,
	precio int not null,
	descuento varchar(55) not null,
	constraint pk_modelo primary key(id_modelo)
);

create table datos_tecnicos(
	id_datotecnico int identity (1,1) not null,
	marca varchar(55) not null,
	modelo varchar(55) not null,
	potencia varchar(55) not null,
	numero_acientos int not null,
	velocidad_final varchar(55) not null,
	cilindraje varchar(55) not null,
	constraint pk_datos_tecnicos primary key(id_datotecnico)
);

create table tipo_equipamiento_de_serie(
	id_equipamiento_serie int identity (1,1) not null,
	marca varchar(55) not null,
	modelo varchar(55) not null,
	ref_vehiculo varchar(55) not null,
	tipo_equipamiento varchar(55) not null,
	costo int not null,
	constraint pk_tipo_equipamiento_serie primary key(id_equipamiento_serie)
);

create table equipamiento_extra(
	id_equipamiento_extra int identity (1,1) not null,
	nombre varchar(55) not null,
	precio_unidad int not null,
	cantidad int not null,
);

create table inventario(
	id_inventario int identity (1,1) not null,
	id_automovil int not null,
	lugar_disponibilidad varchar(55) not null,
	constraint pk_inventario primary key(id_inventario)
);


create table venta(
	id_venta int identity (1,1),
	id_vendedor int not null,
	precio int not null,
	descuento int not null,
	equipamiento_serie varchar(55) not null,
	modo_de_pago varchar(55) not null,
	fecha_de_entrega varchar(55) not null,
	matricula varchar(55) not null,
	tipo_disponibilidad varchar(55) not null,
	costo_extras int not null,
	constraint pk_venta primary key (id_venta),
);

create table vendedor(
	id_vendedor int identity (1,1) not null,
	nombre varchar(55) not null,
	identificacion int not null,
	id_concesionario int not null,
	constraint pk_vendedor primary key (id_vendedor),
);

create table marca_automovil(
	id_marca int identity (1,1) not null,
	nombre varchar(55) not null,
	nit int not null,
	constraint pk_marca_automovil primary key (id_marca),
);

create table servivio_oficial(
	id_servicio_oficial int identity (1,1) not null,
	nombre varchar(55) not null,
	direccion text  not null,
	nit int not null,
	constraint pk_servicio_oficial primary key (id_servicio_oficial),
);








