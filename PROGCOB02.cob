       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB01.
      ***************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = FELIPE TADEU
      * OBJETIVO: RECEBER E IMPRIMIR UMA STRING
      * DATA  = 01/02/2022
      ***************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME PIC X(20) VALUES SPACES.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'NOME.. ' WRK-NOME(1:10).
           STOP RUN.
