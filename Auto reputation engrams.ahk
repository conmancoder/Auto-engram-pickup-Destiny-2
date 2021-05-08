#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

msgbox, ctr + f to start, ctr + d to close program, ctr + s to toggle pause. 
msgbox, 64,, Please put mouse over where you want it before using start hotkey.


^f::	; press ctr&f to begin dismantling
#Persistent
SetTimer, PressF, 1500
return

PressF: 
send {click down}
sleep 2000
send {click up}
return

^d:: ExitApp	; press ctr&d to close ahk
 
^s::
Pause
return