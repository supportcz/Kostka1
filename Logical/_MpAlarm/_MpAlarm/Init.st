

PROGRAM _INIT
		
	//MpAxis2AlarmUIConnect is MpAlarmBasicUIConnect200Type (user defined) because there is 200 user alarms
	MpAlarmBasicUISetupMain.AcknowledgeImage := ADR(MainAlarmUIConnect.AcknowledgeImage);
	MpAlarmBasicUISetupMain.AddInfo := ADR(MainAlarmUIConnect.AddInfo);
	MpAlarmBasicUISetupMain.AddInfoStringSize := SIZEOF(MainAlarmUIConnect.AddInfo[0]);
	MpAlarmBasicUISetupMain.AlarmImage := ADR(MainAlarmUIConnect.AlarmImage);
	MpAlarmBasicUISetupMain.ImageSize := SIZEOF(MainAlarmUIConnect.AlarmImage);
	
	//MpAlarmBasicUI FB init settings
	MpAlarmBasicUI_Main.MpLink := ADR(gAlarmBasic);
	MpAlarmBasicUI_Main.Mode := mpALARM_BASIC_UI_MODE_USER;
	MpAlarmBasicUI_Main.UISetup := MpAlarmBasicUISetupMain;
	
END_PROGRAM