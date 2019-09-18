PROGRAM Counter
VAR
	Counter_timer	: TON;
	iStatus	: INT := 0;
	newVar : INT;
END_VAR

VAR CONSTANT
	StartTimer	: INT := 0;
	Increment	: INT := 1;
END_VAR

CASE iStatus OF
	StartTimer :
		Counter_timer.PT := T#1s;
		Counter_timer.IN := TRUE;

		IF Counter_timer.Q THEN
			iStatus := Increment;
		END_IF
	Increment :
		Counter_timer.IN := FALSE;
		iStatus := StartTimer;
END_CASE

Counter_timer();

END_PROGRAM

ACTIONS

END_ACTIONS