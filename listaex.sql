//Exemplo 1

SET SERVEROUTPUT ON;

DECLARE
    V1 NUMBER;
BEGIN
    BEGIN
        V1 := 10 / 0;
    EXCEPTION
        WHEN ZERO_DIVIDE THEN
            DBMS_OUTPUT.PUT_LINE('Erro: Tentativa de divisão por zero');
    END;
    V1 := 10;
    DBMS_OUTPUT.PUT_LINE(V1);
END;



// Exemplo 2

SET SERVEROUTPUT ON;

DECLARE
    saldo_insuf EXCEPTION;
    saldo_conta NUMBER := 50;
    retirada NUMBER := 100;
BEGIN
    IF retirada > saldo_conta THEN
        RAISE saldo_insuf;
    END IF;
EXCEPTION
    WHEN saldo_insuf THEN
        DBMS_OUTPUT.PUT_LINE('Saldo insuficiente para a retirada.');
END;


// Exemplo 3

SET SERVEROUTPUT ON;
DECLARE
    
    saldo_conta NUMBER := 50;
    retirada NUMBER := 100;
BEGIN
    IF retirada > saldo_conta THEN
      RAISE_APPLICATION_ERROR(-20005, 'Retirada é superior ao saldo de ' || saldo_conta);
    END IF;
EXCEPTION
    WHEN THERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;