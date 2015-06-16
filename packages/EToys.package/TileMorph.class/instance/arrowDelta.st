mouse handling
arrowDelta
	"Answer the amount by which a number I display should increase at a time"

	^  self valueOfProperty: #arrowDelta ifAbsent: [1]