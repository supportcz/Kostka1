
PROGRAM _CYCLIC
	
	//Technological mapp FB call
	MpAxisBasic_Axis1();
	
	//FBs MpAlarmUI for VC4 visualization 
	MpAlarmBasicUI_Axis1.Enable := MpAxisBasic_Axis1.Active;
	MpAlarmBasicUI_Axis1();

	
END_PROGRAM
