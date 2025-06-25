#Requires AutoHotkey v2.0
SetWorkingDir A_ScriptDir
SendMode "Event"              ; Zmiana trybu wysyłania - bardziej kompatybilny z niektórymi aplikacjami
SetKeyDelay 30, 30           ; Większe opóźnienie dla Revita
#UseHook                     ; Używa Hook dla większej niezawodności

; --- Function: Is Revit Window Active ---
IsRevitWindowActive() {
    try {
        ; Sprawdzamy tytuł okna - Revit zazwyczaj ma w tytule "Autodesk Revit"
        if WinActive("ahk_exe Revit.exe") || WinActive("Autodesk Revit")
            return True
            
        ; Alternatywna metoda przez klasę okna
        if WinActive("ahk_class Afx:") || WinActive("ahk_class Qt5QWindowIcon")
            return True
            
        return False
    } catch {
        return False
    }
}

; --- Hotkeys for Revit ---
#HotIf IsRevitWindowActive()

; PODSTAWOWE MAPOWANIE
`::Send "{Tab}"      ; Backtick (`) wysyła Tab
Tab::Send "{Enter}"  ; Tab wysyła Enter

; SKRÓTY Z MODYFIKATORAMI - działające w Revicie
+Tab::Send "{Delete}"     ; Shift+Tab = Delete
+a::Send "{F8}"          ; Shift+A = F8 (możesz zmienić na inną funkcję)
+s::Send "{F9}"          ; Shift+S = F9 (możesz zmienić na inną funkcję)
+4::Send "OF"            ; Shift+4 = OF
+2::Send "S2"            ; Shift+2 = S2 Symetria między dwoma punktami

; NUMPAD jako skróty (jeśli masz klawiaturę numeryczną)
Numpad1::Send "ZF"      ; Zoom to Fit
Numpad2::Send "ZE"      ; Zoom Extents
Numpad3::Send "ZA"      ; Zoom All

#HotIf

; === ZMIENIEONE WEWNĄTRZ REVITA ===
; SHIFT+Q / ZF / ZX - Zoom to Fit
; F3 / SO - Snap Off
; SHIFT+3 - Measure:Measure Between Two Referencses
; SHIFT+2 / S2 - Mid Between 2 Poinst Snap
; RQ - Reset Temporary Hide/Isolat Unisolate
; RQ - Isolate Elesemnt
; SHIFT+4 / OF - Offset





; === PRZYDATNE SKRÓTY REVIT (do wykorzystania) ===
; VH - Hide in View
; VU - Unhide Element  
; VG - Visibility/Graphics
; HH - Hide Element
; HI - Isolate Element
; HC - Hide Category
; HR - Reset Hidden/Isolated
; IC - Isolate Category
; WT - Window Tile
; ZF - Zoom to Fit
; ZE - Zoom Extents
; ZA - Zoom All
; EH - Hidden Line (tryb wyświetlania)
; SD - Shaded (tryb wyświetlania)
; WF - Wireframe (tryb wyświetlania)
