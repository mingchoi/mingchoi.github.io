---
layout: post
title: Get active window with Autohotkey
---

Pack this .ahk script to .exe
```
WinGet, process, ProcessName, A
FileAppend, %process%, *
ExitApp
```

Run it
```
GetActiveProcess.exe | more
```

Get active window title
```
WinGetTitle, title, A
FileAppend, "%title%
ExitApp
``

Get full process list
```
WinGet, windows, list

Loop, %windows%
{
    id := windows%A_Index%
    WinGet, process, ProcessName, ahk_id %id%
    WinGetTitle, title, ahk_id %id%
    FileAppend, %process% %title%`n, *
}
ExitApp
```
