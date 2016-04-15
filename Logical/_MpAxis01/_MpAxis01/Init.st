

PROGRAM _INIT
		
	//mapp FBs basic init settings
	MpAxisBasic_Axis1.MpLink := ADR(gAxisBasic1);
	MpAxisBasic_Axis1.Axis := ADR(gAxis01);
	MpAxisBasic_Axis1.Parameters := ADR(Axis01Par);
	MpAxisBasic_Axis1.Enable := 1;
	
	//MpAxis1AlarmUIConnect is MpAlarmBasicUIConnect20Type because there is only 14 MpAxis alarms and one user alarm
	MpAlarmBasicUISetupAxis1.AcknowledgeImage := ADR(MpAxis1AlarmUIConnect.AcknowledgeImage);
	MpAlarmBasicUISetupAxis1.AddInfo := ADR(MpAxis1AlarmUIConnect.AddInfo);
	MpAlarmBasicUISetupAxis1.AddInfoStringSize := SIZEOF(MpAxis1AlarmUIConnect.AddInfo[0]);
	MpAlarmBasicUISetupAxis1.AlarmImage := ADR(MpAxis1AlarmUIConnect.AlarmImage);
	MpAlarmBasicUISetupAxis1.ImageSize := SIZEOF(MpAxis1AlarmUIConnect.AlarmImage);
	
	//MpAlarmBasicUI FB init settings
	MpAlarmBasicUI_Axis1.MpLink := ADR(gAxisBasic1);	
	MpAlarmBasicUI_Axis1.Mode := mpALARM_BASIC_UI_MODE_ALL;
	MpAlarmBasicUI_Axis1.UISetup := MpAlarmBasicUISetupAxis1;
	

END_PROGRAM