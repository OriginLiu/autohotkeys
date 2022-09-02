;change app window labels 
;ctrl+left/right
$^Right::
rightNext:
    SendInput {CtrlDown}{Tab}{CtrlUp}
    if (GetKeyState("LControl", "P")){
        KeyWait, Right, D, T15
        if ErrorLevel
            MsgBox ,%ErrorLevel%
            return
        Goto, rightNext
    }
    Return

$^Left::
leftNext:
    SendInput {CtrlDown}{ShiftDown}{Tab}{CtrlUp}{ShiftUp}
    if (GetKeyState("LControl", "P")){
        KeyWait, Left, D, T15
        if ErrorLevel
            MsgBox ,%ErrorLevel%
            return
        Goto, leftNext
    }
    Return
