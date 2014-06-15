private
displayedTextAt: anInteger
	"Returns the actiually displayed text in the given row."
	
	(displayedText indexIsInRange: anInteger) ifFalse: [ ^ '' ].
	^ displayedText at: anInteger