PROGRAM PLC_PRG
VAR
    myVar : INT;
END_VAR

myVar := 1;

WHILE myVar > 10 DO
    ;
END_WHILE;

test();

END_PROGRAM

ACTIONS
    ACTION test
        ;
    END_ACTION
END_ACTIONS