#MaxThreadsPerHotkey, 2
Toggle := 0
expectLButton := true

#If expectLButton
LButton::
	expectLButton := false
Return

F1::
Toggle := !Toggle
If (Toggle){
	Loop {
		MouseMove, 970, 520
		Click, Down
  		MouseGetPos, xpos, ypos 
   		if (expectLButton) {
			MouseMove, 970, 520
			Click, Down
			MouseMove, xpos, ypos
  		}
	}
} else {
   Click, Up
}

Return