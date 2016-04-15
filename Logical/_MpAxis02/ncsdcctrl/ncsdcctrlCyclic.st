(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Program: ncsdcctrl
 * File: ncsdcctrlCyclic.st
 * Author: vancurar
 * Created: August 06, 2015
 ********************************************************************
 * Implementation of program ncsdcctrl
 ********************************************************************)

PROGRAM _CYCLIC

(* ### BEGIN gAxis02 ### *)
 
(* life counter emulation of digital inputs *)
 gAxis02_DiDoIf.iLifeCntReference := gAxis02_DiDoIf.iLifeCntReference + 1;
 gAxis02_DiDoIf.iLifeCntNegHwEnd  := gAxis02_DiDoIf.iLifeCntNegHwEnd  + 1;
 gAxis02_DiDoIf.iLifeCntPosHwEnd  := gAxis02_DiDoIf.iLifeCntPosHwEnd  + 1;
  
(* default function model of ACOPOSmicro: convert absolute steps to delta steps - overflow save delta calculation *)
 gAxis02_MotorStep0 := gAxis02_DrvIf.oSetPos - gAxis02_oSetPosOld;
 gAxis02_oSetPosOld := gAxis02_DrvIf.oSetPos;
  
(* ### END gAxis02 ### *)

END_PROGRAM

