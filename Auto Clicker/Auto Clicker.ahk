;**************************************************************
; Version    : 1.0.0
; Author     : INWF
; Created    : 2023.11.25
; File       : Auto Clicker.ahk
;**************************************************************

#Persistent
SetBatchLines, -1
clicking := false

; →键连续左键
Right::
    clicking := true
    While clicking {
        Click down
        Sleep 10  ; 连续点击的间隔(ms)
        GetKeyState, state, Right, P
        ; if state = U
        ;     break
        Click up  
    }
    Click up 
return

; ←键取消
Left::
    clicking := false
    Click up  
return

