private
columns
	"Answer the number of columns of this display."
	
	phidget isAttached ifFalse: [ ^ 0 ].
	^ (self class primColumnCount: phidget id)