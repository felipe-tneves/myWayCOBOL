       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
      ***********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: FELIPE TADEU
      * OBJETIVO: RECEBER 02 NOTAS, MEDIA E  IMPRIMIR
      * UTILIZAR COMANDOS IF/ELSE/ENDIF
      * DATA: 08/02/2022
      ***********************************
       ENVIRONMENT DIVISION.
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
                   IF WRK-MEDIA >= 6
                       DISPLAY 'APROVADO'
                   ELSE
                       IF WRK-MEDIA >= 2
                          DISPLAY 'RECUPERACAO'
                       ELSE
                          DISPLAY 'REPROVADO'
                       END-IF
                   END-IF.
           STOP RUN.
