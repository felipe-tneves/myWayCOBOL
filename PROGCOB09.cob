       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB09.
      ***********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: FELIPE TADEU
      * OBJETIVO: RECEBER PRODUTO, VALOR E CALCULAR O FRETE
      * UTILIZAR COMANDO EVALUATE
      * DATA: 09/02/2022
      ***********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-PRODUTO PIC X(20)    VALUE SPACES.
       77  WRK-UF      PIC X(02)    VALUE SPACES.
       77  WRK-VALOR   PIC 9(06)V99 VALUE ZEROS.
       77  WRK-FRETE   PIC 9(04)V99 VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO: '.
           ACCEPT WRK-PRODUTO FROM CONSOLE.

           DISPLAY 'VALOR: '.
           ACCEPT WRK-VALOR.

           DISPLAY 'ESTADO A ENTREGAR: '.
           ACCEPT WRK-UF.

           EVALUATE WRK-UF
               WHEN 'SP'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,05
               WHEN 'RJ'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,10
               WHEN 'MG'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,15
               WHEN OTHER
                   DISPLAY 'NAO PODEMOS ENTREGAR '
               END-EVALUATE.

               DISPLAY '==========================='.
               IF WRK-FRETE NOT EQUAL 0
                   DISPLAY 'PRODUTO: ' WRK-PRODUTO
                   DISPLAY 'VALOR DO FRETE: R$' WRK-FRETE
               END-IF.

           STOP RUN.
