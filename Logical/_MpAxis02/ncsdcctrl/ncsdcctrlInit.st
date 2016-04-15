(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Program: ncsdcctrl
 * File: ncsdcctrlInit.st
 * Author: vancurar
 * Created: August 06, 2015
 ********************************************************************
 * Implementation of program ncsdcctrl
 ********************************************************************)

PROGRAM _INIT

(* ### BEGIN gAxis02 ### *)
 
(* initialize general interfaces *)
 gAxis02.size := gAxis02.size;
 gAxis02_HW.DrvIf_Typ := ncSDC_DRVSM16;
 strcpy( ADR(gAxis02_HW.DrvIf_Name[0]), ADR('gAxis02_DrvIf') );
 gAxis02_HW.DiDoIf_Typ := ncSDC_DIDO;
 strcpy( ADR(gAxis02_HW.DiDoIf_Name[0]), ADR('gAxis02_DiDoIf') );
 gAxis02_HW.EncIf1_Typ := ncSDC_ENC16;
 strcpy( ADR(gAxis02_HW.EncIf1_Name[0]), ADR('gAxis02_EncIf1') );
 gAxis02_EncIf1.iLifeCnt := gAxis02_EncIf1.iLifeCnt;
 
(* initialize old-value for delta step calculation *)
 gAxis02_oSetPosOld := gAxis02_DrvIf.oSetPos;
  
(* ### END gAxis02 ### *)

END_PROGRAM

