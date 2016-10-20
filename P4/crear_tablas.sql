---------------------------
-- Crear tabla Empleados --
---------------------------
create table Empleados
	(
	Nombre CHAR(50) NOT NULL, 
	DNI CHAR(9) PRIMARY KEY, 
	Sueldo Number(6,2), 
	CHECK (Sueldo BETWEEN 645.30 AND 5000)
	);
-- Respuesta:
-- Table EMPLEADOS creado.

------------------------------------
-- Crear tabla "C�digos postales" --
------------------------------------
create table "C�digos postales"
	(
	"C�digo postal" Char(5) PRIMARY KEY, 
	Poblaci�n Char(50) NOT NULL,
	Provincia Char(50) NOT NULL
	);
-- Respuesta:
-- Table "C�digos postales" creado.

----------------------------
-- Crear tabla Domicilios --
----------------------------
create table Domicilios
	(
	DNI Char(9), 
	Calle Char(50), 
	"C�digo postal" Char(5),
	FOREIGN KEY (DNI) 
		REFERENCES Empleados(DNI) 
		ON DELETE CASCADE, -- Elimina las entradas de Domicilio correspondientes al Empleado eliminado 
	FOREIGN KEY ("C�digo postal") 
		REFERENCES "C�digos postales"("C�digo postal")  -- No permite borrar el CP si sigue existiendo
	);
-- Respuesta:
-- Table DOMICILIOS creado.

---------------------------
-- Crear tabla Tel�fonos --
---------------------------
create table Tel�fonos
	(
	DNI Char(9), 
	Tel�fono Char(9), 
	FOREIGN KEY (DNI) 
		REFERENCES Empleados(DNI) 
		ON DELETE CASCADE -- Elimina las entradas de Tel�fono correspondientes al Empleado eliminado 
		-- ON DELETE SET NULL -- Pone a "null" las entradas de Tel�fono correspondientes al Empleado eliminado
	);
-- Respuesta:
-- Table TEL�FONOS creado.