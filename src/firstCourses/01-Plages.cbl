      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. 01-Plages.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 val PIC 9(15).

       SCREEN SECTION.
       1 pls-exemple.
           2 BLANK SCREEN.
           2 LINE 6 COL 10 VALUE 'Saisir une valeur : '.
           2 saisie PIC x(15) TO val REQUIRED.

       1 pla-exemple.
           2 LINE 8 COL 10 VALUE 'Resultat : '.
           2 COL 30 PIC x(15) FROM saisie.

       PROCEDURE DIVISION.

       DISPLAY pls-exemple.
       ACCEPT saisie.
       DISPLAY pla-exemple.

       STOP RUN.
