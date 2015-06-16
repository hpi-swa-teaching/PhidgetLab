event handling
mouseDown: evt 
	"Allow the user to respecify this by direct clicking"

	| aMorph |
	(putSelector == #unused or: [putSelector isNil]) ifTrue: [^self].
	Sensor waitNoButton.
	aMorph := self world chooseClickTarget.
	aMorph ifNil: [^self].
	objectToView perform: putSelector with: aMorph assuredPlayer.
	self changed