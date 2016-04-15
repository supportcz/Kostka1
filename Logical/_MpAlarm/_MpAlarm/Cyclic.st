
PROGRAM _CYCLIC
	
	// MpAlarm FB call 
	MpAlarmBasic_0(MpLink := ADR(gAlarmBasic), Enable := 1);

	(*	TESTING OF ALARM SET/RESET
		Setting 'i' or ('j') var to nonzero value leads to set alarm on index 'i - 1' ('j - 1') in case that 'i' ('j') is greater than 0 and to reset in similar way in case that 'i'('j') is lower than 0
		Setting 'k'('l') to nonzero value leads to set user alarm on index 15 in case that 'k'('l') is greater than 0 and to reset this alarm in case that 'k'('l') is lower than 0
	*)
	
	// Set/Reset alarm on i-1 th index in gMain (if i > 100, there is no influence to MpAlarmBasic)
	IF simMainAlarmIndex > 0 THEN
		MpAlarmSet(gAlarmBasic, simMainAlarmIndex - 1,'addInfo');
	ELSIF simMainAlarmIndex < 0 THEN
		MpAlarmReset(gAlarmBasic, -(simMainAlarmIndex + 1));
	END_IF
	
END_PROGRAM
