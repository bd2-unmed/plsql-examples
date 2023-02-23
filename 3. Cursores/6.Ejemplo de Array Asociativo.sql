DECLARE
    TYPE t_num IS TABLE OF NUMBER(3) INDEX BY BINARY_INTEGER;
    mis_num t_num;
    i NUMBER;
BEGIN
    FOR i IN 1..40 LOOP
        -- Se genera un número aleatorio para el índice y como valor. 
        -- Existirán índices desde el -19 al 19
        mis_num(MOD(DBMS_RANDOM.RANDOM,20)) := MOD(DBMS_RANDOM.RANDOM,1000);
    END LOOP;
    i := mis_num.FIRST;
    WHILE i IS NOT NULL LOOP
        DBMS_OUTPUT.PUT_LINE('Pos:'|| i || ' Val:' || mis_num(i));
        i := mis_num.NEXT(i);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total de datos en el array:'|| mis_num.COUNT);
END;

