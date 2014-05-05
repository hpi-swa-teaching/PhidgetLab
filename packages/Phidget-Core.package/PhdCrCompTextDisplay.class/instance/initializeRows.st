initialisation
initializeRows

	| rows |
	rows := self rows.
	
	text := (Array new: rows).
	displayedText := (Array new: rows).
	running := (Array new: rows).
	1 to: rows do: [ :rowNumber |
		text at: rowNumber put: ''.
		displayedText at: rowNumber put: ''.
		running at: rowNumber put: false ].