DECLARE
    -- Declara el cursor
    TYPE payment_type IS TABLE OF payments%ROWTYPE INDEX BY BINARY_INTEGER;
    payments_data payment_type;
BEGIN
   SELECT * BULK COLLECT INTO payments_data FROM payments ORDER by amount;
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
