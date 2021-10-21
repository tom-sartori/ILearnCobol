      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 02-Manipulations.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 a PIC 99.
       77 b PIC 99.
       77 c PIC 99.


       SCREEN SECTION.
       1 pla-resultat.
           2 BLANK SCREEN.
           2 LINE 5 COL 10 VALUE 'a = '.
           2 COL 14 PIC 99 FROM a.



       PROCEDURE DIVISION.

       MAIN-PROCEDURE.
           MOVE 5 TO a.

           DISPLAY pla-resultat.

       STOP RUN.
