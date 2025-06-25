#Requires AutoHotkey v2.0
SetWorkingDir A_ScriptDir
SetKeyDelay -1, -1

; --- Global Variables ---
global EWD_MouseWin := 0
global EWD_OriginalPosX := 0
global EWD_OriginalPosY := 0


; --- Hotkeys for AutoCAD LT ---
Tab::SendInput "{Enter}"
`::SendInput "selmastertool{Enter}"
+q::SendInput "isolate{Enter}"
+w::SendInput "unisolate{Enter}"
+e::SendInput "selectsimilar{Enter}"
+x::SendInput "polyarea{Enter}"
+z::SendInput "sumarea{Enter}"
+2::SendInput "_copybase{Enter}"
+3::SendInput "measuregeom{Enter}distance{Enter}"
+4::SendInput "_offset{Enter}"
+r::SendInput "_stretch{Enter}" ; Changed to _stretch macro with 0 delay
^q::SendInput "osmode{Enter}11{Enter}" ; endpoint - midpoint - node
^w::SendInput "osmode{Enter}32{Enter}" ; intersection
^e::SendInput "osmode{Enter}35{Enter}" ; endpoint, midpoint, intersection
x & w::SendInput "ucs{Enter}" ; UCS command
x & e::SendInput "plan{Enter}c{Enter}" ; New macro: plan-enter-c-enter
+a::SendInput ".x{Enter}"
+s::SendInput ".y{Enter}"
+Tab::SendInput "erase{Enter}" ; Added Shift+Tab to send ERASE command
#HotIf