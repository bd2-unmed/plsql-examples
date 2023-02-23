DROP TABLE bodega;
CREATE TABLE bodega(id NUMBER(4) PRIMARY KEY,d XMLTYPE);
INSERT INTO bodega VALUES (100, XMLTYPE('<Warehouse whNo="5"><Building>Owned</Building></Warehouse>'));
INSERT INTO bodega VALUES (200, XMLTYPE('<Warehouse whNo="8"><Building>Rented</Building><Tel>21287</Tel></Warehouse>'));

DECLARE
    suma NUMBER(8) := 0;
BEGIN
    FOR mi_w IN (SELECT b.*,EXTRACTVALUE(d,'/Warehouse/@whNo') AS wh,EXTRACTVALUE(d,'/Warehouse/Building') AS bu FROM bodega b) LOOP
        DBMS_OUTPUT.PUT_LINE(mi_w.id || CHR(10) ||
        mi_w.d.EXTRACT('/*').getStringVal() ||
        mi_w.wh || ' ' || mi_w.bu);
        suma := suma + mi_w.wh;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total: ' || suma);
END;