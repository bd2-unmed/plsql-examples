-- Ejemplo de select INTO de una fila de la tabla payments insertado en 4. inserciòn de datos en una tabla.
DECLARE
 cliente payments.client_id%TYPE; -- Usamos Type para obtener el tipo de dato de la tabla.
 total payments.amount%TYPE; -- Usamos Type para obtener el tipo de dato de la tabla.
BEGIN
        SELECT client_id, amount into cliente, total from payments where id = (select max(id) from payments);
        DBMS_OUTPUT.put_line('Cliente: ' || cliente || ' total: ' || total);
        
        SELECT client_id, amount into cliente, total from payments where rownum = 1;
        DBMS_OUTPUT.put_line('Cliente: ' || cliente || ' total: ' || total);
END;