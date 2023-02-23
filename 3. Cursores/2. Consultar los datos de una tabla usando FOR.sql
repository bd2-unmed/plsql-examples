DECLARE
    -- Declara el cursor
    CURSOR payments_c IS SELECT client_id, amount FROM payments ORDER BY amount; 
    totalVentas payments.amount%TYPE := 0;
    totalTransacciones NUMBER(10);
BEGIN
    FOR payment IN payments_c LOOP
        DBMS_OUTPUT.put_line('Cliente: ' || payment.client_id || ' valor de venta: ' || payment.amount);
        totalVentas := totalVentas + payment.amount;
        -- Debemos capturar ROWCOUNT antes de que finalice el ciclo, 
        -- ya que por fuera el cursor estaría cerrado
        totalTransacciones := payments_c%ROWCOUNT; 
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total de Ventas: ' || totalVentas);
    DBMS_OUTPUT.PUT_LINE('Total de transacciones: ' || totalTransacciones); 

END;