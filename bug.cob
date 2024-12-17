01  WS-AREA-1 PIC X(100). 
01  WS-AREA-2 PIC X(100). 

PROCEDURE DIVISION.
    MOVE 'Hello' TO WS-AREA-1.
    MOVE WS-AREA-1 TO WS-AREA-2.
    DISPLAY WS-AREA-2.
    GOBACK.

This code snippet appears to be simple, but it could lead to a subtle bug related to data truncation.  If the data moved to WS-AREA-1 exceeds the length of WS-AREA-2, it would cause truncation.  While not a runtime error, the data will be incomplete in WS-AREA-2, which is difficult to debug if you're not expecting such behavior.