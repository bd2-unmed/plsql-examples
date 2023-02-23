-- Habilitamos la impresión de procedimientos
SET SERVEROUTPUT ON;

-- Declaración de variables
DECLARE 
A NUMBER(4) := 10;
B VARCHAR2(20) := 'El valor de A es ';
-- Mostramos por pantalla un mensaje
BEGIN
    -- TOMA EL VALOR A DEL BLOQUE  EXTERNO
    DBMS_OUTPUT.PUT_LINE(B || A);
    DECLARE 
       A NUMBER(4) := 50;
    BEGIN
        -- TOMA EL VALOR A DEL BLOQUE INTERNO
       DBMS_OUTPUT.PUT_LINE(B || A);
    END;
        -- TOMA NUEVAMENTE EL VALOR A DEL BLOQUE INTERNO
    DBMS_OUTPUT.PUT_LINE(B || A);

END;