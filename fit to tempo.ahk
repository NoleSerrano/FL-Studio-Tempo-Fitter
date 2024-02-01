XButton2:: ; Mouse5
    Click
    CoordMode, Mouse, Screen
    MouseGetPos, OriginalX, OriginalY

    ; Rename
    MouseMove, 65, 88, 0, R
    Click

    ; Copy the name of the sample (Ctrl+A, Ctrl+C)
    Send, ^a
    Send, ^c

    ; Copy sample name and extract the BPM
    SampleName := Clipboard
    RegExMatch(SampleName, "(?i)(\d+)\s*BPM", SampleBPM)

    SendInput, {Enter}
    MouseMove, OriginalX, OriginalY
    Click

    ; Fit to tempo
    MouseMove, 216, 129, 0, R
    Click

    ; Type in BPM
    MouseMove 957, 728
    Click

    SendInput,%SampleBPM1%
    SendInput, {Enter}
    MouseMove, OriginalX, OriginalY ; Original position
return
