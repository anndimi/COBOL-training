       IDENTIFICATION DIVISION.
       PROGRAM-ID. LEAP.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-YEAR PIC 9(4).
       01 WS-RESULT PIC 9 VALUE 0.
       PROCEDURE DIVISION.
       LEAP.
         IF FUNCTION MOD(WS-YEAR, 4) = 0
            MOVE 1 TO WS-RESULT
         END-IF.
      
         IF FUNCTION MOD(WS-YEAR, 100) = 0 
            MOVE 0 TO WS-RESULT
         END-IF.
      
         IF FUNCTION MOD(WS-YEAR, 400) = 0
            MOVE 1 TO WS-RESULT
         END-IF.
      
       LEAP-EXIT.
         EXIT.
