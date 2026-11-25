
-- Crear una base de datos
CREATE DATABASE PruebaUnidad4;
GO

-- Utilizar la base de datos
USE PruebaUnidad4;
GO

-- Crear el procedimiento almacenado
CREATE PROCEDURE ClasificarEdad
    @Nombre VARCHAR(100),
    @Edad INT
AS
BEGIN
    SET NOCOUNT ON;

    IF @Edad < 0
    BEGIN
        PRINT 'Error: La edad no puede ser negativa.';
        RETURN;
    END

    IF @Edad < 1
    BEGIN
        PRINT 'Nombre: ' + @Nombre;
        PRINT 'Edad: ' + CAST(@Edad AS VARCHAR(10));
        PRINT 'Clasificacion: Menor de edad.';
    END
    ELSE IF @Edad BETWEEN 18 AND 59
    BEGIN
        PRINT 'Nombre: ' + @Nombre;
        PRINT 'Edad: ' + CAST(@Edad AS VARCHAR(10));
        PRINT 'Clasificacion: Adulto.';
    END
    ELSE
    BEGIN
        PRINT 'Nombre: ' + @Nombre;
        PRINT 'Edad: ' + CAST(@Edad AS VARCHAR(10));
        PRINT 'Clasificacion: Adulto mayor.';
    END
END;
GO
