; shift + CapsLock = CapsLock
+CapsLock::CapsLock
; CapsLock = Ctrl
CapsLock::Ctrl

RCtrl::RWin


;===============================================================================
;用来修改win10默认的窗口快捷键，使左手可以单手操作
;===============================================================================
^!h::
    send, {lwin down}{ctrl down}{left}
    sleep 50
    send, {lwin up}{ctrl up}
    WinActivate  ;
return
;按下ctrl + alt + h等于按下ctrl + win +  左方向键


^!l::
    send, {lwin down}{ctrl down}{right}
    sleep 50
    send, {lwin up}{ctrl up}
    WinActivate  ;
return
;按下ctrl + alt + l等于按下ctrl + win +  右方向键

^!a::
    send, {lwin down}{ctrl down}{left}
    sleep 50
    send, {lwin up}{ctrl up}
    WinActivate  ;
return
;按下ctrl + alt+ a等于按下ctrl + win +  左方向键


^!f::
    send, {lwin down}{ctrl down}{right}
    sleep 50
    send, {lwin up}{ctrl up}
    WinActivate  ;
return
;按下ctrl + alt + f等于按下ctrl + win +  右方向键


^#x::
    send, {lwin down}{ctrl down}{f4}
    sleep 50
    send, {lwin up}{ctrl up}
return
;按下ctrl + win + x等于按下ctrl + win +  F4


!q::
    send, {alt down}{f4}
    sleep 50
    send, {alt up}
return
;按下alt+ q等于按下alt + F4

#w::
    send, {lwin down}{up}
    sleep 50
    send, {lwin up}
return
;按下win + w ，将窗口最大化，接下来的按键都是窗口缩放操作

#a::
    send, {lwin down}{left}
    sleep 50
    send, {lwin up}
return
;按下win + a ，将窗口向左移动

#s::
    send, {lwin down}{right}
    sleep 50
    send, {lwin up}
return
;按下win + s ，将窗口向右移动

#z::
    send, {lwin down}{down}
    sleep 50
    send, {lwin up}
return
;按下win + s ，将窗口变小
