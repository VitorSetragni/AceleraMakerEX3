      ******************************************************************
      * Author:Vitor
      * Date: 27/05/2026
      * Purpose: Treinamento
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SALARIO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *
       01 FUNCIONARIO.
            05 NOME               pic x(25).
            05 SALARIO            pic 9(9)V99.
            05 TEMPO-DE-EMPRESA   pic 99.
       01 OPCAO                   PIC 9 VALUE 1.
       01 SALARIO-FINAL           PIC 9(9)V99.
       01 BONUS                   PIC 9(6)V99.
       01 SALARIO-SEM-DECIMAL     pic 9(11).
       01 SALARIO-IMPRESSAO       PIC ZZZZZZZZZZZ9.99.
       01 SALARIO-FINAL-IMPRESSAO PIC ZZZZZZZZZZZ9.99.
       01 BONUS-IMPRESSAO         PIC ZZZZZZZ9.99.
      *
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM MENUSAL UNTIL OPCAO IS NOT EQUAL TO 1.
           STOP RUN.
       MENUSAL.
           DISPLAY " ".
           DISPLAY "Deseja calcular o salario final?".
           DISPLAY "Escreve o numero da opcao que deseja".
           DISPLAY "1 - SIM".
           DISPLAY "2 - NAO".
           DISPLAY "Qual quer numero que nao 1 sera considerado o nao".
           ACCEPT OPCAO
      *
           IF OPCAO IS EQUAL TO 2
               DISPLAY "Obrigario por usar o sistema".
           IF OPCAO = 1
               PERFORM ENTRADA-DADOS
               PERFORM CALCULA-BONUS
               PERFORM CALCULA-SALARIO
               PERFORM EXIBE-RESULTADO.

       ENTRADA-DADOS.
            DISPLAY "Digite o seu nome".
            ACCEPT NOME.
      *
            DISPLAY "Digite seu salario sem utilizar a virgula".
            DISPLAY "Você deve escrever seu salario no formato XXXXXYY "
      -      "inves de XXXXXX,YY".
            ACCEPT SALARIO-SEM-DECIMAL.
            COMPUTE SALARIO = SALARIO-SEM-DECIMAL / 100.
      *
            DISPLAY "Digite a quantidade de anos que voce esta na "
      -      "empresa".
            ACCEPT TEMPO-DE-EMPRESA.
      *
       CALCULA-BONUS.
           IF TEMPO-DE-EMPRESA <= 1
              COMPUTE BONUS = SALARIO * 5 / 100
           ELSE
              IF TEMPO-DE-EMPRESA <= 5
                 COMPUTE BONUS = SALARIO * 10 / 100
              ELSE
                 COMPUTE BONUS = SALARIO * 15 / 100.
      *
       CALCULA-SALARIO.
           COMPUTE SALARIO-FINAL = SALARIO + BONUS.
      *
       EXIBE-RESULTADO.
           MOVE SALARIO TO SALARIO-IMPRESSAO.
           MOVE BONUS TO BONUS-IMPRESSAO.
           MOVE SALARIO-FINAL TO SALARIO-FINAL-IMPRESSAO.
      *
           DISPLAY " ".
           DISPLAY "NOME:" NOME.
           DISPLAY "SALARIO BASE:" SALARIO-IMPRESSAO.
           DISPLAY "BONUS:" BONUS-IMPRESSAO.
           DISPLAY "SALARIO FINAL" SALARIO-FINAL-IMPRESSAO.
      *
       END PROGRAM SALARIO.
