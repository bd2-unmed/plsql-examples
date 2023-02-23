DECLARE
    -- Declara el cursor
    CURSOR payments_c IS SELECT * FROM payments ORDER BY amount;
    TYPE payment_type IS TABLE OF payments_c%ROWTYPE INDEX BY BINARY_INTEGER;
    payments_data payment_type;
BEGIN
    FOR payment IN payments_c LOOP
        payments_data(payment.id) := payment;
    END LOOP;
    
    DECLARE 
        i NUMBER(10);
    BEGIN
        i := payments_data.FIRST;
        while i IS NOT null LOOP
            DBMS_OUTPUT.PUT_LINE('Id:' || payments_data(i).id || ' Client Id:' || payments_data(i).client_id || ' Amount:' || payments_data(i).amount  );
            i := payments_data.NEXT(i);
        END LOOP;
    END;
    
END;
