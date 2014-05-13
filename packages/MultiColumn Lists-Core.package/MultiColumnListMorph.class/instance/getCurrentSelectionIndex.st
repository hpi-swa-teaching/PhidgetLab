selections
getCurrentSelectionIndex
	"Only to be called OUTSIDE of this class!"
	selection ifNil: [^nil].
	^selection value "Key is for the ORIGINAL list order; value is the sorted/filtered list order"