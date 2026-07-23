#NoEnv
#SingleInstance Force

; Test: in File Explorer, Alt+Backspace should show what's happening
#IfWinActive ahk_class CabinetWClass
!Backspace::
    WinGetClass, cls, A
    WinGetTitle, title, A
    MsgBox, In File Explorer! Class: %cls% Title: %title%
    Send {Delete}
return
#IfWinActive
