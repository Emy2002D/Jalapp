-----Oracle------------

CREATE TABLE Cliente (
    ID_CLIENTE INT PRIMARY KEY,
    Nombre VARCHAR(100),
    ApellidoPaterno VARCHAR(100),
    ApellidoMaterno VARCHAR(100),
    Telefono VARCHAR(20),
    CorreoElectronico VARCHAR(100),
    URL VARCHAR(255)
);

CREATE TABLE Vendedor (
    ID_VEN INT PRIMARY KEY,
    Nombre VARCHAR(100),
    ApellidoPaterno VARCHAR(100),
    ApellidoMaterno VARCHAR(100),
    Sexo VARCHAR(10),
    Telefono VARCHAR(20),
    CorreoElectronico VARCHAR(100)
);

CREATE TABLE CantidadPago (
    ID_PAGO INT PRIMARY KEY,
    pago_description VARCHAR(100)
);


CREATE TABLE Productos (
    ID_PAGO NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    descripcion VARCHAR2(4000),
    img VARCHAR2(255),
    precio_venta NUMBER(10, 2)
);

CREATE TABLE DetalleVenta (
    ID_VENTA INT PRIMARY KEY,
    Peso DECIMAL(10, 2),
    PrecioImporte DECIMAL(10, 2),
    PrecioTotal DECIMAL(10, 2),
    Fecha DATE,
    Status VARCHAR(50),
    ID_VEN INT,
    ID_CLIENTE INT,
    ID_PROD INT,
    ID_PAGO INT,
    FOREIGN KEY (ID_VEN) REFERENCES Vendedor(ID_VEN),
    FOREIGN KEY (ID_CLIENTE) REFERENCES Cliente(ID_CLIENTE),
    FOREIGN KEY (ID_PROD) REFERENCES Productos(ID_PROD),
    FOREIGN KEY (ID_PAGO) REFERENCES CantidadPago(ID_PAGO)
);

---phpmyadmin---
CREATE TABLE Cliente (
    ID_CLIENTE INT PRIMARY KEY,
    Nombre VARCHAR(100),
    ApellidoPaterno VARCHAR(100),
    ApellidoMaterno VARCHAR(100),
    Telefono VARCHAR(20),
    CorreoElectronico VARCHAR(100),
    URL VARCHAR(255)
);

CREATE TABLE Vendedor (
    ID_VEN INT PRIMARY KEY,
    Nombre VARCHAR(100),
    ApellidoPaterno VARCHAR(100),
    ApellidoMaterno VARCHAR(100),
    Sexo VARCHAR(10),
    Telefono VARCHAR(20),
    CorreoElectronico VARCHAR(100)
);

CREATE TABLE CantidadPago (
    ID_PAGO INT PRIMARY KEY,
    pago_description VARCHAR(100)
);

CREATE TABLE Productos (
    ID_PROD INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(4000),
    img VARCHAR(255),
    precio_venta DECIMAL(10, 2)
);

CREATE TABLE DetalleVenta (
    ID_VENTA INT PRIMARY KEY,
    Peso DECIMAL(10, 2),
    PrecioImporte DECIMAL(10, 2),
    PrecioTotal DECIMAL(10, 2),
    Fecha DATE,
    Status VARCHAR(50),
    ID_VEN INT,
    ID_CLIENTE INT,
    ID_PROD INT,
    ID_PAGO INT,
    FOREIGN KEY (ID_VEN) REFERENCES Vendedor(ID_VEN),
    FOREIGN KEY (ID_CLIENTE) REFERENCES Cliente(ID_CLIENTE),
    FOREIGN KEY (ID_PROD) REFERENCES Productos(ID_PROD),
    FOREIGN KEY (ID_PAGO) REFERENCES CantidadPago(ID_PAGO)
);
