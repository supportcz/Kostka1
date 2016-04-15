

PROGRAM _INIT
		
	MpAxisBasic_Axis2.MpLink := ADR(gAxisBasic2);
	MpAxisBasic_Axis2.Axis := ADR(gAxis02);	
	MpAxisBasic_Axis2.Parameters := ADR(Axis02Par);
	MpAxisBasic_Axis2.Enable := 1;
	
	//MpAxis2AlarmUIConnect is MpAlarmBasicUIConnect20Type because there is only 14 MpAxis alarms and one user alarm
	MpAlarmBasicUISetupAxis2.AcknowledgeImage := ADR(MpAxis2AlarmUIConnect.AcknowledgeImage);
	MpAlarmBasicUISetupAxis2.AddInfo := ADR(MpAxis2AlarmUIConnect.AddInfo);
	MpAlarmBasicUISetupAxis2.AddInfoStringSize := SIZEOF(MpAxis2AlarmUIConnect.AddInfo[0]);
	MpAlarmBasicUISetupAxis2.AlarmImage := ADR(MpAxis2AlarmUIConnect.AlarmImage);
	MpAlarmBasicUISetupAxis2.ImageSize := SIZEOF(MpAxis2AlarmUIConnect.AlarmImage);
	
	//MpAlarmBasicUI FB init settings
	MpAlarmBasicUI_Axis2.MpLink := ADR(gAxisBasic2);
	MpAlarmBasicUI_Axis2.Mode := mpALARM_BASIC_UI_MODE_ALL;
	MpAlarmBasicUI_Axis2.UISetup := MpAlarmBasicUISetupAxis2;
	

END_PROGRAM