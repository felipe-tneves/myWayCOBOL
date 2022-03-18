       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      ***********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: FELIPE TADEU
      * OBJETIVO: RECEBER 02 NOTAS, MEDIA E  IMPRIMIR
      * UTILIZAR COMANDO EVALUATE
      * DATA: 09/02/2022
      ***********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77  WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77  WRK-MEDIA PIC 9(02)V9 VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'MEDIA DAS NOTAS'.
           DISPLAY '--------------------'.
           DISPLAY 'INFORME A NOTA 01: '.
           ACCEPT WRK-NOTA1 FROM CONSOLE.
           DISPLAY 'INFORME A NOTA 02: '.
           ACCEPT WRK-NOTA2 FROM CONSOLE.
           DISPLAY '-------------------'.
               COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) /2.
               DISPLAY 'MEDIA: ' WRK-MEDIA.
                   EVALUATE WRK-MEDIA
                       WHEN 10
                           DISPLAY 'APROV - BONUS'
                       WHEN 6 THRU 9,9
                           DISPLAY 'APROVADO'
                       WHEN 2 THRU 5,9
                          DISPLAY 'RECUPERACAO'
                       WHEN OTHER
                          DISPLAY 'REPROVADO'
                   END-EVALUATE.
           STOP RUN.
