accessing
currentTag
	"Returns a string which represents a hex-value of the 5 bytes tag ID of the tag currently read.
	If there is no tag currently read, return an empty string."
	
	^ self hasTag
		ifTrue: [ self lastTag ]
		ifFalse: [ '' ]