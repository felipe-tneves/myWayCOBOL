       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB03.
      ***********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = FELIPE TADEU
      * OBJETIVO: RECEBER E IMPRIMIR A DATA DO SISTEMA
      * UTILIZAR VARIAVEIS NIVEL 01.02... (ESTRUTURADAS)
      * DATA = 01/02/2022
      ***********************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
           02 WRK-ANO PIC 9(04) VALUE ZEROS.
           02 WRK-MES PIC 9(02) VALUE ZEROS.
           02 WRK-DIA PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY 'DATA.. ' WRK-DIA '/' WRK-MES '/' WRK-ANO.
           STOP RUN.
