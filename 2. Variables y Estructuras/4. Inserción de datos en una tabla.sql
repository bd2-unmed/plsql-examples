-- Inserta varios datos en la tabla payments creado en 3. Ejemplo de execute inmediate con DDL.
-- Se asume que la tabla de payments está vacía
-- DELETE FROM PAYMENTS
DECLARE
 seq payments.id%TYPE := 4; -- Usamos Type para obtener el tipo de dato de la tabla.
BEGIN
        INSERT INTO payments (id, client_id, create_at, amount) VALUES (seq, 30,sysdate, 1500);
        seq := seq + 1;
        INSERT INTO payments (id, client_id, create_at, amount) VALUES (seq, 10,sysdate, 700);
        seq := seq + 1;
        INSERT INTO payments (id, client_id, create_at, amount) VALUES (seq, 50,sysdate, 100);
END;

-- Para visualizar: SELECT * FROM payments