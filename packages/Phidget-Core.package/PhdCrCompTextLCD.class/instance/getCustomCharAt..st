accessing
getCustomCharAt: index
	"Returns the custom character at the given index as array of the upper and lower value. Return nil when using an invalid index."
	
	(index < 1 or: [ index > 8 ]) ifTrue: [ ^ nil ].
	
	^ customChars at: index