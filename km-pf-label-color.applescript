tell application "Keyboard Maestro Engine"
	set myVar to make variable with properties {name:"Label Color"}
	set theValue to value of myVar
end tell
tell application "Finder"
	set selected to selection
	repeat with n_file in every item in selected
		if label index of n_file = 0 then
			set the label index of n_file to theValue
		else
			set label index of n_file to 0
		end if
	end repeat
end tell