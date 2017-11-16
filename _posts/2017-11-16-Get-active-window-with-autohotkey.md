---
layout: post
title: Get active window with Autohotkey
---

## How it works

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

## More feature

Get active window title
```
WinGetTitle, title, A
FileAppend, "%title%
ExitApp
```

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

## Full script
```
Loop, %0%
{
    param := %A_Index%
    break
}

if (param=="activeprocess")
{
    WinGet, process, processName, A
    FileAppend, %process%, *
}

if (param=="activetitle")
{
    WinGetTitle, title, A
    FileAppend, %title%, *
}

if (param=="all")
{
    WinGet, windows, list
    Loop, %windows%
    {
        id := windows%A_Index%
        WinGet, process, ProcessName, ahk_id %id%
        WinGetTitle, title, ahk_id %id%
        FileAppend, %process%:%title%`n, *
    }
}

ExitApp 
```
