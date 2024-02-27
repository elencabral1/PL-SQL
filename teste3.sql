--Aula 3
-- Declarando uma variável

VARIABLE teste_bind VARCHAR2(255);

SET SERVEROUTPUT ON;

BEGIN
    :teste_bind := 'Nosso Teste';
    dbms_output.put_line(:teste_bind);
END;


VARIABLE media NUMBER;

EXEC :media FROM DUAL;


DEFINE id_;

SET SERVEROUTPUT ON;

BEGIN
    dbms_output.put_line(&id_);
END;