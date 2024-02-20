SET SERVEROUTPUT ON;

DECLARE
    nome VARCHAR2(50) := 'Elen';
BEGIN
    dbms_output.put_line('Nome: ' || nome );
END;


SET SERVEROUTPUT ON;

DECLARE
    TOTAL NUMBER;
    VL1 NUMBER := 1;
    VL2 NUMBER := 2;
    VL3 NUMBER := 3;
    
BEGIN
    TOTAL := vl1 + vl2 + vl3;
    dbms_output.put_line('Total: ' || total );
END;


SET SERVEROUTPUT ON;

DECLARE
    VLR INT := 5;
    ANT INT := 4;
    SUC INT := 6;
BEGIN
    dbms_output.put_line('Antecessor: ' || ant || ', Sucessor: ' || suc);
    
END;



SET SERVEROUTPUT ON;

DECLARE
    MEU_SALARIO NUMBER := 3000;
    QTD NUMBER;
BEGIN
    qtd := meu_salario/1412;
    dbms_output.put_line(qtd || ' Salários mínimos');
END;


SET SERVEROUTPUT ON;

DECLARE
    CP1 NUMERIC := 6;
    CP2 NUMERIC := 8;
    CP3 NUMERIC := 9;
    MEDIA NUMERIC;
BEGIN
    MEDIA := (CP1 + CP2 + CP3) / 3;
    dbms_output.put_line(MEDIA || ' Nota de média');
END;


SET SERVEROUTPUT ON;

DECLARE
    MEU_SALARIO NUMBER := 2000;
    REAJUSTE NUMBER;
BEGIN
    REAJUSTE := MEU_SALARIO + (meu_salario * 0.05);
    dbms_output.put_line(reajuste || ' Salário com reajuste');
END;