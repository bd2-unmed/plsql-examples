-- Ejemplo de condiciones requiere 4. inserci�n de datos en una tabla.
DECLARE
 cliente payments.client_id%TYPE; -- Usamos Type para obtener el tipo de dato de la tabla.
 total payments.amount%TYPE; -- Usamos Type para obtener el tipo de dato de la tabla.
BEGIN
        SELECT client_id, amount into cliente, total from payments where id = 4;
        DBMS_OUTPUT.put_line('Cliente: ' || cliente || ' total: ' || total);
        
        CASE WHEN total <= 100 THEN
            DBMS_OUTPUT.put_line('Adquisici�n de m�nima cuant�a' );    
        WHEN total > 101 and total < 600 THEN
            DBMS_OUTPUT.put_line('Adquisici�n de menor cuant�a' );
        ELSE
            DBMS_OUTPUT.put_line('Adquisici�n superior' );
        END CASE;
END;