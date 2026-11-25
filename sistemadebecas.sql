
-- ACTIVIDAD 2. SISTEMA DE BECAS
-- Procedimiento almacenado en Oracle SQL

CREATE OR REPLACE PROCEDURE determinar_beca (
    p_nombre IN VARCHAR2,
    p_calificacion IN NUMBER
)
AS
    v_resultado VARCHAR2(50);
BEGIN

    -- Validar la calificacion
    IF p_calificacion < 0 OR p_calificacion > 100 THEN
        DBMS_OUTPUT.PUT_LINE('Error: La calificacion debe estar entre 0 y 100.');

    ELSE
        -- Determinar el tipo de beca
        IF p_calificacion >= 95 THEN
            v_resultado := 'Beca completa';

        ELSIF p_calificacion >= 90 THEN
            v_resultado := 'Media beca';

        ELSE
            v_resultado := 'Sin beca';
        END IF;

        -- Mostrar resultados
        DBMS_OUTPUT.PUT_LINE('Nombre del alumno: ' || p_nombre);
        DBMS_OUTPUT.PUT_LINE('Calificacion: ' || p_calificacion);
        DBMS_OUTPUT.PUT_LINE('Resultado: ' || v_resultado);

    END IF;

END determinar_beca;
/


--consulta para verificar el procedimiento almacenado
DECLARE
    v_nombre VARCHAR2(100) := 'Juan Pérez';
    v_calificacion NUMBER := 96;
BEGIN
    determinar_beca(v_nombre, v_calificacion);
END;
/