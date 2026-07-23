#NoEnv
WinGet, id, List,,, Program Manager
Loop, %id%
{
    hwnd := id%A_Index%
    WinGetClass, cls, ahk_id %hwnd%
    WinGetTitle, title, ahk_id %hwnd%
    WinGet, pname, ProcessName, ahk_id %hwnd%
    if (pname = "explorer.exe")
        FileAppend, Class: %cls%  Title: %title%  Process: %pname%`n, *
}
ExitApp
