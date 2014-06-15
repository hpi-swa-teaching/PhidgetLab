as yet unclassified
testEventHandling

	| event |
	event := MouseEvent new.
	
	plug plugged: false.
	[(plug handlesMouseDown: event) = false] assert.

	plug plugged: true.
	[(plug handlesMouseDown: event) = true] assert.
	