01  WS-AREA-1 PIC X(100).
01  WS-AREA-2 PIC X(100).
01  WS-LENGTH PIC 9(4) COMP.

PROCEDURE DIVISION.
    MOVE 'Hello, world!' TO WS-AREA-1.
    INSPECT WS-AREA-1 TALLYING WS-LENGTH FOR CHARACTERS.

    IF WS-LENGTH > LENGTH OF WS-AREA-2 THEN
        DISPLAY "Error: Data truncation will occur!" 
        STOP RUN
    END-IF.

    MOVE WS-AREA-1 TO WS-AREA-2.
    DISPLAY WS-AREA-2.
    GOBACK.

The improved code explicitly checks the length of the data before moving it. This will throw an error if data truncation is about to happen, preventing data loss.