# ILearnCobol


<details> 
  <summary>
    Forme de variable (type)
  </summary>

  | En COBOL | Correspondance |
  | :- | :- |
  | 9 | Nombre à 1 chiffre |
  | 9(5)  | Nombre à 5 chiffres |
  | a(10) | Chaîne de 10 caractères alphabétiques |
  | x(25) | Chaîne de 25 caractères alphanumériques |
  | 9v9 | Nombre à 1 chiffre et 1 décimale |
  | 9(3)v9(2) | Nombre à 3 chiffres à 2 décimales |
  | s9(3) | Nombre à 3 chiffres signé (+) ou (-) |
  
</details>

<details>
  <summary>
    Les plages
  </summary>
  
  Les plages permettent de **gérer les entrées et sorties**. Il y a les plages **d'affichages** et celles de **saisies**.  
  
  La gestion des entrées/sorties se fait dans `SCREEN SECTION`, donc on déclare ligne 1 ce que l’on va faire.  
  
  **Plage d'affichage**
  ```cobol
  SCREEN SECTION.

  1 pla-example.
      2 BLANK SCREEN.
      2 LINE 3 COL 15 VALUE 'Hello world !'.
  ```
  
  **Plage de saisie**
  ```cobol
  DATA DIVISION.
  WORKING-STORAGE SECTION.
  77 val PIC 9(15).
       
  SCREEN SECTION. 
  
  1 pls-example.
     2 LINE 5 COL 8 VALUE 'Saisir une valeur : '.
     2 PIC x(25) TO val REQUIRED.
  ```
  
  N.B. : `PIC` est un mot clé qui permet de décrire la forme qu'aura la variable au moment de son affichage. 
  
  **Utilisation dans la procédure**
  ```cobol
  PROCEDURE DIVISION. 
  
  DISPLAY pla-example. 
  
  DISPLAY pls-example. 
  ACCEPT pls-example. 
  ```
  
  **Les étiquettes** 
  ```cobol
    IDENTIFICATION DIVISION.
    PROGRAM-ID. ExempleEtiquette.

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
  ```
  Ici, l'étiquette se nomme `saisie`. Cela permet d'accéder à la valeur de `val` sous un autre nom. 
  
</details>



<details>
  <summary>
    Manipulations
  </summary>
  
  **MOVE**
  Equivalent à `=`.
  
  ```cobol
  PROCEDURE DIVISION.
  
  MOVE 5 TO a b c.
  ```
</details>


