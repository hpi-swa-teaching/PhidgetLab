*Phidget-Core
indexIsInRange: index
	"answer true if the given index is in range of this collection, false otherwise."

	^ index isInteger
		and: [ index >= 1 ]
		and: [ index <= self size ]