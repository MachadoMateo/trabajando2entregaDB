insert into automoviles (modelo,disponiblidad)
values ('201','con stock'),
	   ('200','sin stock');


insert into modelo (ref_modelo,marca,ref_vehiculo,precio,descuento)
values ('2013','renault','sandero','25000000','10%'),
       ('2018','mazda','mazda 3 turing','45000000','0%');
select * from tipo_equipamiento_de_serie

alter table 
add marca varchar(55);

drop table tipo_equipamiento_de_serie;

insert into datos_tecnicos (modelo,marca,potencia,numero_acientos,velocidad_final,cilindraje)
values ('SedanX','mazda', '150 HP', '5', '200 km/h', '2000 cc'),
       ('SUVPro','subaru', '180 HP', '7', '220 km/h', '2500 cc'),
       ('DeportivoMax','supra', '300 HP', '2', '280 km/h', '3500 cc');


insert into tipo_equipamiento_de_serie (marca,modelo,ref_vehiculo,tipo_equipamiento,costo)
values ('renault','2019','duster','full','85000000'),
	   ('chevrolet','2023','onix rs','basico','65000000');

insert into equipamiento_extra(nombre,precio_unidad,cantidad)
values ('rin 18','180000','4'),
       ('pintura camaleon','1000000','1');



