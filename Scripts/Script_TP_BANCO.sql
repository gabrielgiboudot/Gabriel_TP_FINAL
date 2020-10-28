
CREATE DATABASE TP_BANCO;
USE TP_BANCO;

CREATE TABLE TiposDeMovimientos (
    IdTipoMovimiento INT NOT NULL AUTO_INCREMENT,
    DescripcionTipoDeMovimiento VARCHAR(50),
    PRIMARY KEY (IdTipoMovimiento)
);

CREATE TABLE TiposDeCuentas(
	IdTipoDeCuenta INT NOT NULL AUTO_INCREMENT,
    Descripcion VARCHAR(50),
    PRIMARY KEY (IdTipoDeCuenta)
);

CREATE TABLE Movimientos(
	IdMovimiento INT NOT NULL AUTO_INCREMENT,
	Fecha DATETIME NOT NULL,
	Detalle VARCHAR(50) NULL,
	Importe DECIMAL(5,4) NOT NULL,
	IdTipoMovimiento INT NOT NULL,
    PRIMARY KEY (IdMovimiento),
    FOREIGN KEY (IdTipoMovimiento) REFERENCES TiposDeMovimientos (IdTipoMovimiento)
);

CREATE TABLE TiposDeUsuarios(
	IdTipoDeUsuario INT NOT NULL AUTO_INCREMENT,
    DescripcionTipoDeUsuario VARCHAR(50),
	PRIMARY KEY (IdTipoDeUsuario)
);

CREATE TABLE Generos(
	IdGenero INT NOT NULL  AUTO_INCREMENT,
    DescripcionGenero VARCHAR(50),
    PRIMARY KEY (IdGenero)
);

CREATE TABLE Usuarios(
	IdUsuario INT NOT NULL AUTO_INCREMENT,
	DNI INT NOT NULL,
	Cuil VARCHAR(50) NULL,
	Nombre VARCHAR(50) NOT NULL,
	Apellido VARCHAR(50) NOT NULL,
	FechaNacimiento DATETIME NULL,
	Email VARCHAR(50), 
	NombreUsuario VARCHAR(50) NOT NULL,
	Contraseña VARCHAR(50) NOT NULL,
	IdGenero INT NOT NULL,
	ESTADO BIT NOT NULL,
	IdTipoDeUsuario INT NOT NULL,
    PRIMARY KEY (IdUsuario),
    FOREIGN KEY (IdGenero) REFERENCES Generos(IdGenero),
    FOREIGN KEY (IdTipoDeUsuario) REFERENCES TiposDeUsuarios(IdTipoDeUsuario)
);

CREATE TABLE TelefonosPorCliente(
	IdUsuario INT NOT NULL AUTO_INCREMENT,
    NumeroDeTelefono VARCHAR (50) NOT NULL,
	PRIMARY KEY (IdUsuario, NumeroDeTelefono)
);

CREATE TABLE Provincias(
	IdProvincia INT NOT NULL AUTO_INCREMENT,
    DescripcionProvincia VARCHAR(50),
    PRIMARY KEY (IdProvincia)
);

CREATE TABLE Localidades(
	IdLocalidad INT NOT NULL AUTO_INCREMENT,
    DescripcionLocalidad VARCHAR(50),
    IdProvincia INT NOT NULL,
    PRIMARY KEY (IdLocalidad),
    FOREIGN KEY (IdProvincia) REFERENCES Provincias(IdProvincia)
);

CREATE TABLE Direcciones(
	IdDireccion INT NOT NULL AUTO_INCREMENT,
    Direccion VARCHAR(50),
    PRIMARY KEY (IdDireccion)
);

CREATE TABLE DireccionPorCliente(
	IdUsuario INT NOT NULL,
    IdDireccion INT NOT NULL,
	IdLocalidad INT NOT NULL,
    PRIMARY KEY (IdUsuario, IdDireccion),
	FOREIGN KEY (IdUsuario) REFERENCES Usuarios(IdUsuario),
    FOREIGN KEY (IdDireccion) REFERENCES Direcciones(IdDireccion),
    FOREIGN KEY (IdLocalidad) REFERENCES Localidades(IdLocalidad)
);

CREATE TABLE Cuentas(
	NroDeCuenta INT NOT NULL AUTO_INCREMENT,
	IdTipoDeCuenta INT NOT NULL,
	FechaCreacion DATETIME NULL,
	CBU VARCHAR(50) NOT NULL,
	Saldo DECIMAL(9,4) NOT NULL DEFAULT 10000.0000,
	PRIMARY KEY (NroDeCuenta, IdTipoDeCuenta),
	FOREIGN KEY (IdTipoDeCuenta) REFERENCES TiposDeCuentas(IdTipoDeCuenta)
);

CREATE TABLE CuentasPorUsuario(
	NroDeCuenta INT NOT NULL,
	IdUsuario INT NOT NULL,
	PRIMARY KEY(NroDeCuenta, IdUsuario),
    FOREIGN KEY (NroDeCuenta) REFERENCES Cuentas(NroDeCuenta),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios(IdUsuario)  
);

CREATE TABLE Prestamos(
	IdPrestamo INT NOT NULL AUTO_INCREMENT,
	Fecha DATETIME NOT NULL,
	ImporteConIntereses DECIMAL(5,4) NOT NULL CHECK (ImporteConIntereses>0),
	ImporteSolicitado DECIMAL(5,4) NOT NULL CHECK (ImporteSolicitado>0),
	PlazoDePago INT NOT NULL,
	ValorCuotaMensual DECIMAL(5,4) NOT NULL,
	CantidadDeCuotas INT NOT NULL,
    PRIMARY KEY(IdPrestamo)
);
 
CREATE TABLE EstadosDePrestamo(
	IdEstado INT NOT NULL AUTO_INCREMENT,
	Descripcion VARCHAR (50),
	PRIMARY KEY(IdEstado)
);

CREATE TABLE PrestamosPorCliente(
	IdPrestamo INT NOT NULL,
	IdUsuario INT NOT NULL,
	IdEstado INT NOT NULL,
	PRIMARY KEY(IdPrestamo, IdUsuario),
	FOREIGN KEY (IdPrestamo) REFERENCES Prestamos(IdPrestamo),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios(IdUsuario),
	FOREIGN KEY (IdEstado) REFERENCES EstadosDePrestamo(IdEstado)
);

CREATE TABLE PrestamoPorCuota(
IdPrestamo INT NOT NULL,
NroCuota TINYINT NOT NULL,
FechaPago DATETIME NULL,
Estado BIT NOT NULL DEFAULT 0,
PRIMARY KEY(IdPrestamo,NroCuota),
FOREIGN KEY (IdPrestamo) REFERENCES Prestamos(IdPrestamo)
);



