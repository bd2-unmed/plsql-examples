DECLARE
    -- Declara el cursor
    CURSOR payments_c IS SELECT * FROM PAYMENTS ORDER BY amount; 
    payment_row PAYMENTS%ROWTYPE;
    totalVentas payments.amount%TYPE := 0;
BEGIN
    OPEN payments_c; --Abre el cursor
    LOOP
        FETCH payments_c INTO payment_row; -- Obtiene un registro
        EXIT WHEN payments_c%NOTFOUND; --Si no obtuvo nada entonces cierra el ciclo
        DBMS_OUTPUT.put_line('Cliente: ' || payment_row.client_id || ' valor de venta: ' || payment_row.amount);
        totalVentas := totalVentas + payment_row.amount; 
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total de Ventas: ' || totalVentas);
    DBMS_OUTPUT.PUT_LINE('Total de transacciones: ' || payments_c%ROWCOUNT);
    CLOSE payments_c; --Cierra el cursor
END;