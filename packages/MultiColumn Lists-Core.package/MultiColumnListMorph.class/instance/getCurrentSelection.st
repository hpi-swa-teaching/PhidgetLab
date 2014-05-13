selections
getCurrentSelection
	"Returns the original object that is currently selected"
	"Only to be called OUTSIDE of this class!"
	selection ifNil: [^nil].
	^origObjects at: selection value "Key is for the ORIGINAL list order; value is the sorted/filtered list order"