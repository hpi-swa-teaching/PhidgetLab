alans styles
noiseWordBeforeVariableNode: aNode string: aString

	(#('self' 'nil') includes: aString) ifFalse: [
		aNode code ifNil: [^'my'].
		aNode type < 4 ifTrue: [^'my']
	].
	^nil