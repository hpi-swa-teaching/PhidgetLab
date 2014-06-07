initialization
setColor 
	| anImage |
	[ phidget getAttached 
		ifTrue: [ anImage := (PhidgetImageLoader
								Instance load: self statusMorph getName asSymbol) ]
		ifFalse: [anImage := (PhidgetImageLoader
								Instance load: self statusMorph getName, '_off' asSymbol) ].
	self statusMorph image: anImage ] 
										on: MessageNotUnderstood
										do: [ ]