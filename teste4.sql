-- Exercicio 1

SET SERVEROUTPUT ON;
BEGIN
    dbms_output.put_line ('Meu nome �: ' || '&nome');
END;


ACCEPT nome CHAR PROMPT 'Digite o seu nome';
DECLARE
    entrada varchar(100);
BEGIN
    entrada:= '&nome';
    dbms_output.put_line ('Meu nome �: ' || entrada);
END;


-- Exercicio 2
DECLARE
    VL_TOTAL number;
    QTD_DOLAR number;
    TOTAL number;
    TX_CAMBIO number:=4.99;
BEGIN
    QTD_DOLAR:=10.00;
    VL_REAL:= QTD_DOLAR*TX_CAMBIO;
    dbms_output.put_line ('A quantidade de ' || QTD_DOLAR||'D�lares em reais �'|| VL_REAL);
END;



ACCEPT ent_dolar NUMBER PROMPT 'Digite a quantidade em d�lares';
ACCEPT ent_tx_cambio NUMBER PROMPT 'Digite a taxa do c�mbio';

DECLARE
    VL_REAL number;
    QTD_DOLAR number;
    TX_CAMBIO number:=&ent_tx_cambio;
BEGIN
    QTD_DOLAR:=&ent_dolar;
    VL_REAL:= QTD_DOLAR*TX_CAMBIO;
    dbms_output.put_line ('A quantidade de ' || QTD_DOLAR||' D�lares em reais � '|| VL_REAL);
END;


-- Exercicio 3

DECLARE 
    PARC NUMBER;
    JUROS NUMBER;
    VL_TOTAL NUMBER;
    QTD_PARC NUMBER;
BEGIN
    JUROS:=1.01; --1%
    VL_TOTAL:=500;
    QTD_PARC:=5;
    PARC:=(VL_TOTAL/QTD_PARC)*JUROS;
    dbms_output.put_line('Quantidade Parcelas ' || QTD_PARC);
    dbms_output.put_line('Valor original da compra '|| VL_TOTAL);
    dbms_output.put_line('Valor da parcela R$'|| PARC);
    dbms_output.put_line('Valor da compra R$'|| (PARC*QTD_PARC));
    dbms_output.put_line('Juros da compra R$'|| ((PARC*QTD_PARC)-VL_TOTAL));
END;



--Aula 04/03
-- IF, ELSIF, ELSE

SET SERVEROUTPUT ON;
BEGIN
    IF &num >0 THEN
        dbms_output.put_line('O n�mero � maior que 0');
    END IF;
END;

--

SET SERVEROUTPUT ON;
BEGIN
    IF &num >0 THEN
        dbms_output.put_line('O n�mero � maior que 0');
    ELSE
        dbms_output.put_line('O n�mero � menor que 0');
    END IF;
END;

--

SET SERVEROUTPUT ON;
DECLARE
    entrada number;
BEGIN
    entrada:= &num;
    if entrada > 0 then
        dbms_output.put_line('O n�mero � maior que 0');
    elsif entrada = 0 then
        dbms_output.put_line('O n�mero � igual a 0');
    else
        dbms_output.put_liner('O n�mero � menor que 0');
    end if;
END;
