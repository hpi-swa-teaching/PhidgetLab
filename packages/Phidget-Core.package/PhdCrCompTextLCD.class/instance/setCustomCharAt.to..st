accessing
setCustomCharAt: index to: aPhdCrCustomChar
	"Sets the custom character at the given index using the given CustomChar.
	Return true if the operation suceeded, false otherwise."
	
	| ret |
	phidget isAttached ifFalse: [ ^ false ].
	index < 1 | index > 8 ifTrue: [ ^ false ].
	
	ret := (self class
		primSetCustomChar: phidget id
		at: index+7 "custom character indices start at 8"
		to: aPhdCrCustomChar upper
		and: aPhdCrCustomChar lower) == 1.
		
	ret ifTrue: [ customChars at: index put: aPhdCrCustomChar ].
	^ ret