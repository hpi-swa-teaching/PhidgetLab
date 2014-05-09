private
updateStatus
	"repositioning (and resizing) my status morph"
	
	| newWidth |
	max = min
		ifTrue: [ newWidth := 0 ]
		ifFalse: [ newWidth := self width asFloat * (value asFloat - min) / (max - min asFloat) - 2].
	newWidth < 0 ifTrue: [ newWidth := 0 ].
	statusMorph
		position: self position + (1@1);
		height: self height - 2;
		width: newWidth.
	