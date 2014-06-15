accessing
currentTagBytes
	"Returns a byte array with the 5 elements of the tag ID currently read.
	If there is no tag currently read, return nil."
	
	^ self hasTag
		ifTrue: [ self lastTagBytes ]
		ifFalse: [ nil ]