private
rows
	"Answer the number of rows of this display."
	
	phidget isAttached ifFalse: [ ^ 0 ].
	^ (self class primRowCount: phidget id)