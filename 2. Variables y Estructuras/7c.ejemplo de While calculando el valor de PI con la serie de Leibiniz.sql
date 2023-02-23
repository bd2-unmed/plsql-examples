-- Calcular pi usando la serie de Leibniz.
-- Basado en https://parzibyte.me/blog/2020/04/15/c-calculo-pi-serie-leibniz/#:~:text=La%20serie%20de%20Leibniz%20dice,paso%20se%20intercambia%20el%20signo.
DECLARE
  pi NUMBER(20,10) :=  0.0;
  iteraciones NUMBER(6) :=  10000; 
  numerador NUMBER(20,10) :=  4.0;
  denominador NUMBER(20,10) :=  1.0; -- A este lo vamos a ir aumentando de 2 en 2
  x NUMBER(5) :=  0;
  operador NUMBER(20,10) :=  1.0; 
BEGIN
    WHILE x <= iteraciones LOOP
        pi := pi + operador*(numerador / denominador);
        denominador := denominador + 2.0; -- El denominador aumenta de 2 en 2
        operador := operador*-1;   -- Alternamos operador
        x := x +1;
    END LOOP;
   DBMS_OUTPUT.PUT_LINE('El valor de Pi con ' || iteraciones || '=' || pi);
END;