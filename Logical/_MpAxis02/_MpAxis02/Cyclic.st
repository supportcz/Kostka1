
PROGRAM _CYCLIC

	//Technological mapp FB call
	MpAxisBasic_Axis2();		
	
	//FBs MpAlarmUI for VC4 visualization 
	MpAlarmBasicUI_Axis2.Enable := MpAxisBasic_Axis2.Active;
	MpAlarmBasicUI_Axis2();
	
END_PROGRAM
