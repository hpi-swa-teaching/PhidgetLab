alans styles
substituteKeywordFor: aString

	aString isEmpty ifTrue: [^aString asString].
	aString asString = '^ ' ifTrue: [^'answer'].
	aString asString = 'ifTrue:' ifTrue: [^'Yes'].
	aString asString = 'ifFalse:' ifTrue: [^'No'].
	aString asString = 'self' ifTrue: [^'self'].
	aString first isUppercase ifTrue: [^aString asString].

	^self splitAtCapsAndDownshifted: aString