

create table Camarero
(
	IdCamarero int auto_increment comment 'Llame Primaria Camareros'
		primary key,
	Nombre varchar(25) not null comment 'Nombre de Camarero',
	Apellido1 varchar(30) not null comment 'Primer Apellido Camarero (Obligatorio)',
	Apellido2 varchar(30) null comment 'Segundo Apellido Camarero (Opcional)'
)
comment 'Tabla de Camareros';

create table Cliente
(
	IdCliente int auto_increment comment 'Llave Primaria de Clientes'
		primary key,
	Nombre varchar(25) not null comment 'Nombre del Cliente',
	Apellido1 varchar(15) not null comment 'Primer Apellido de Cliente (Obligatorio)',
	Apellido2 varchar(15) null comment 'Segundo Apellido de Cliente (Opcional)',
	Observaciones varchar(100) null comment 'Observaciones acerca del cliente'
)
comment 'Tabla de Clientes';

create table Cocinero
(
	idCocinero int auto_increment comment 'Llave Primaria de Cocineros'
		primary key,
	Nombre varchar(25) not null comment 'Nombre del Cocinero',
	Apellido1 varchar(30) not null comment 'Primer Apellido de Cocinero (Obligatorio)',
	Apellido2 varchar(30) null comment 'Segundo Apellido de Cocinero (Opcional)'
)
comment 'Tabla de Cocineros';

create table DetalleFactura
(
	IdFactura int not null comment 'Llave Foranea de Facturas',
	IdDetalleFactura int auto_increment comment 'Llave Primaria del Detalle'
		primary key,
	IdCocinero int not null comment 'Llave Foranea del Cocinero',
	Plato varchar(40) default 'n' not null,
	Importe double default 0 not null,
	constraint DetalleFactura_Cocinero_idCocinero_fk
		foreign key (IdCocinero) references Cocinero (idCocinero)
)
comment 'Tabla de Detalles de Factura';

create table Mesa
(
	idMesa int auto_increment comment 'Llave Primaria de Mesas'
		primary key,
	NumMaxComensa int default 0 not null,
	Ubicacion int not null comment 'ASUMO, que existe un catalogo de ubicaciones, por lo tanto esta se convertiria en una llave foranea que referencia a este catalogo'
)
comment 'Tabla de Mesas';

create table Factura
(
	idFactura int auto_increment comment 'Llave Primaria de Facturas'
		primary key,
	idCliente int not null comment 'LLave Foranea de Clientes',
	idCamarero int not null comment 'LLave Foranea de Camareros',
	idMesa int not null comment 'LLave Foranea de Mesas',
	FechaFactura date not null,
	constraint Factura_Camarero_idCamarero_fk
		foreign key (idCamarero) references Camarero (IdCamarero),
	constraint Factura_Cliente_idCliente_fk
		foreign key (idCliente) references Cliente (IdCliente),
	constraint Factura_Mesa_idMesa_fk
		foreign key (idMesa) references Mesa (idMesa)
)
comment 'Tabla de Facturas';

#mysql ignora este tipo de constraint, referencia
#https://stackoverflow.com/questions/7522026/how-do-i-add-a-custom-check-constraint-on-a-mysql-table

alter table Factura add constraint check_fecha check (year(FechaFactura) >= 2010 and year(NumMaxComensa) <= 2030);
alter table DetalleFactura add constraint check_plato check (Plato like 'n%' or Plato like 'N%');
alter table Mesa add constraint check_num check (NumMaxComensa >= 2 and NumMaxComensa <= 10);
