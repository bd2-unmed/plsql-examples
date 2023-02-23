BEGIN-- Borramos Tabla Payments, si no existe 
    BEGIN
       EXECUTE IMMEDIATE 'DROP TABLE payments';
    -- Si la tabla no existe, se generar� un excepci�n, la cual ser� capturada e ignorada.
    EXCEPTION -- Captura excepciones
       WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Tabla no exist�a o se gener� otro error');
    END;
    BEGIN -- Se crea la tabla en el sistema
       EXECUTE IMMEDIATE 'CREATE TABLE payments (id NUMBER(15) primary key, client_id NUMBER(15) NOT NULL, create_at DATE , amount NUMBER(30))';
    END;
END;
