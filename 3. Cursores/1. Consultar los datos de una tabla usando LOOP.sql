DECLARE
    -- Declara el cursor
    CURSOR payments_c IS SELECT client_id, amount FROM payments ORDER BY amount; 
    cliente payments.client_id%TYPE;
    total payments.amount%TYPE;
    totalVentas payments.amount%TYPE := 0;
BEGIN
    OPEN payments_c; --Abre el cursor
    LOOP
        FETCH payments_c INTO cliente, total; -- Obtiene un registro
        EXIT WHEN payments_c%NOTFOUND; --Si no obtuvo nada entonces cierra el ciclo
        DBMS_OUTPUT.put_line('Cliente: ' || cliente || ' valor de venta: ' || total);
        totalVentas := totalVentas + total; 
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total de Ventas: ' || totalVentas);
    DBMS_OUTPUT.PUT_LINE('Total de transacciones: ' || payments_c%ROWCOUNT);
    CLOSE payments_c; --Cierra el cursor
    
    
END;