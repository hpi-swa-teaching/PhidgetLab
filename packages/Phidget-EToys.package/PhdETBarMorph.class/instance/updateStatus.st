private
updateStatus
	"Update my statusMorph."
	
	| expansion newPosition newWidth |
	expansion := self calcStatusMorphDirection.
	"expansion is a float between -0.5 and 0.5, representing direction and length of the new status morph bar."
	
	newWidth := self calcStatusMorphWidth: expansion.
	newPosition := self calcStatusMorphPosition: expansion forWidth: newWidth.
	
	statusMorph
		position: newPosition;
		height: self height - 2;
		width: newWidth.
		
	self updateMiddleLine.
	