; =============================================================================
;  Mac Keyboard Mapping for Windows (AHK v1)
;  Alt -> Command (Cmd)  |  Win -> Option (Opt)  |  Ctrl -> Control (Ctrl)
;  Only maps specific shortcuts, does NOT swap base modifier keys
;  Suspends hotkeys when remote desktop apps are active
; =============================================================================

#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%

; -- Suspend hotkeys in remote desktop apps --
GroupAdd, RemoteApps, ahk_exe GameViewer.exe    ; UU Remote
GroupAdd, RemoteApps, ahk_exe SunloginClient.exe  ; Sunlogin (ToDesk)
GroupAdd, RemoteApps, ahk_exe ToDesk.exe     ; ToDesk
GroupAdd, RemoteApps, ahk_exe mstsc.exe      ; Windows RDP
GroupAdd, RemoteApps, ahk_exe AnyDesk.exe    ; AnyDesk
GroupAdd, RemoteApps, ahk_exe TeamViewer.exe ; TeamViewer

#IfWinNotActive ahk_group RemoteApps

; -- Text editing (Cmd shortcuts -> Ctrl shortcuts) --
!a::Send ^a          ; Cmd+A -> Select All
!c::Send ^c          ; Cmd+C -> Copy
!v::Send ^v          ; Cmd+V -> Paste
!x::Send ^x          ; Cmd+X -> Cut
!z::Send ^z          ; Cmd+Z -> Undo
!+z::Send ^y         ; Cmd+Shift+Z -> Redo
!s::Send ^s          ; Cmd+S -> Save
!f::Send ^f          ; Cmd+F -> Find
!g::Send {F3}        ; Cmd+G -> Find Next
!+g::Send +{F3}      ; Cmd+Shift+G -> Find Previous

; -- Window/App management --
!w::Send ^w          ; Cmd+W -> Close Tab
!q::Send !{F4}       ; Cmd+Q -> Quit App
!m::WinMinimize A    ; Cmd+M -> Minimize Window
!h::Send #d          ; Cmd+H -> Show Desktop
!,::Send ^,          ; Cmd+, -> Open Settings

; -- Tab management --
!t::Send ^t          ; Cmd+T -> New Tab
!+t::Send ^+t        ; Cmd+Shift+T -> Reopen Tab

; -- Switching --
LAlt & Tab::AltTab   ; Cmd+Tab -> Switch Apps
LAlt & `::Send !{Esc}; Cmd+` -> Switch Same-App Windows

; -- Screenshots --
!+3::Send #+s          ; Cmd+Shift+3 -> Screenshot
!+4::Send #+s        ; Cmd+Shift+4 -> Screenshot

; -- Text navigation (Cmd + Arrow keys) --
!Left::Send {Home}         ; Cmd+Left -> Home
!Right::Send {End}         ; Cmd+Right -> End
!Up::Send ^{Home}          ; Cmd+Up -> Doc Start
!Down::Send ^{End}         ; Cmd+Down -> Doc End
!+Left::Send +{Home}       ; Cmd+Shift+Left -> Select to Home
!+Right::Send +{End}       ; Cmd+Shift+Right -> Select to End
!+Up::Send +^{Home}        ; Cmd+Shift+Up -> Select to Doc Start
!+Down::Send +^{End}       ; Cmd+Shift+Down -> Select to Doc End

; -- Delete --
; Cmd+Delete -> Delete (release Alt first to avoid sending Alt+Delete)
!Backspace::Send {Alt up}{Delete}
!+Backspace::Send {Alt up}+{Delete}

; -- Other useful mappings --
!l::Send !d           ; Cmd+L -> Focus Address Bar
!r::Send ^r           ; Cmd+R -> Refresh
!+r::Send ^+r         ; Cmd+Shift+R -> Hard Refresh
!n::Send ^n           ; Cmd+N -> New Window
!o::Send ^o           ; Cmd+O -> Open File
!p::Send ^p           ; Cmd+P -> Print
!i::Send ^i           ; Cmd+I -> Italic
!b::Send ^b           ; Cmd+B -> Bold
!u::Send ^u           ; Cmd+U -> Underline

#IfWinNotActive

; -- Startup notification --
TrayTip, Mac Keyboard Mapping, Alt->Cmd shortcuts active (suspended in remote apps), 3, 1
