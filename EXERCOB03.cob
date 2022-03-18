Em algumas empresas, o tempo de casa (anos que o trabalhador atua na empresa) vale como critério para aumento salarial.

Monte um programa que receba via console:

Nome;
Ano de entrada na empresa;
Salário de um funcionário.
Para isso, aplique um aumento, de acordo com o tempo de casa baseado nas regras a seguir:

Tempo de trabalho na empresa	Porcentagem de aumento
0 a 1 ano	0%
de 2 a 05 anos	5%
de 06 a 15 anos	10%
a partir de 16 anos	15%

       Vamos iniciar nosso programa com um template em branco, com as principais marcas (divisões) do Cobol. **Passo 1:** Criar um programa com a estrutura básica cobol ``` IDENTIFICATION DIVISION. PROGRAM-ID. XXXXXX. ENVIRONMENT DIVISION. DATA DIVISION. WORKING-STORAGE SECTION PROCEDURE DIVISION. STOP RUN. ``` **Passo 2:** Configurar o ambiente para trocar o ponto (`.`) pela vírgula (`,`) como separador de casas decimais. ``` ENVIROMENT DIVISION. CONFIGURATION SECTION. SPECIAL-NAMES. DECIMAL-POINT IS COMMA ``` **Passo 3:** Declarar as variáveis Na Data Division - Working Storage, vamos declarar as variáveis que usaremos para receber `WRK-NOME`, `WRK-ANOENTRADA` e `WRK-SALARIO`. Para calcularmos o tempo de casa, criaremos a variável `WRK-TEMPOCASA`. E para calcularmos o valor do aumento, criaremos a variável `WRK-AUMENTO`. Na sequência, precisamos criar a variável de grupo `WRK-DATASISTEMA` para receber o ano atual do sistema. ``` WORKING-STORAGE SECTION. 77 WRK-NOME PIC X(30) VALUE SPACES. 77 WRK-ANOENTRADA PIC 9(04) VALUE ZEROS. 77 WRK-SALARIO PIC 9(06)V99 VALUE ZEROS. 77 WRK-AUMENTO PIC 9(03)V99 VALUE ZEROS. 77 WRK-TEMPOCASA PIC 9(02) VALUE ZEROS. 01 WRK-DATASISTEMA. 02 WRK-DATAANO PIC 9(04). 02 WRK-DATAMES PIC 9(02). 02 WRK-DATADIA PIC 9(02). ``` **Passo 4:** Codificar o recebimento das variáveis Agora, na Procedure Division, vamos codificar o recebimento das variáveis `WRK-DATASISTEMA`, `WRK-NOME`, `WRK-ANOENTRADA` e `WRK-SALARIO`. ``` ACCEPT WRK-DATASISTEMA FROM DATE YYYYMMDD. DISPLAY 'NOME DO FUNCIONARIO '. ACCEPT WRK-NOME. DISPLAY 'ANO DE ENTRADA NA EMPRESA '. ACCEPT WRK-ANOENTRADA. DISPLAY 'SALARIO ATUAL ' ACCEPT WRK-SALARIO. ``` **Passo 5:** Calcular, imprimir, validar, calcular e imprimir Vamos calcular e imprimir o tempo de casa. Depois, validar o tempo de casa, calcular e, ao final, imprimir o valor do aumento de acordo com as regras citadas. ``` COMPUTE WRK-TEMPOCASA = WRK-DATAANO - WRK-ANOENTRADA. DISPLAY 'TEMPO DE CASA ' WRK-TEMPODECASA ' ANO(S)'. EVALUATE WRK-TEMPOCASA WHEN 0 THRU 1 COMPUTE WRK-AUMENTO = 0 WHEN 2 THRU 5 COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,05 WHEN 6 THRU 15 COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,10 WHEN OTHER COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,15 END-EVALUATE. DISPLAY 'AUMENTO SALARIO DE ' WRK-AUMENTO. ``` Pronto! Agora é só executar, entrar com os dados e receber o resultado: ``` NOME DO FUNCIONARIO CARLOS ANTONIO ANO DE ENTRADA NA EMPRESA 2010 SALARIO ATUAL 2000 TEMPO DE CASA 09 ANO(S) AUMENTO SALARIO DE 200,00 Process finished with exit code 0 ```
