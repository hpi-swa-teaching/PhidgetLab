accessing
unSpaceAndUpShift: aString appending: extraChars 
	| answer upShiftNext |
	answer := WriteStream on: String new.
	upShiftNext := false.
	aString do: 
			[:ch | 
			upShiftNext :=( ch == Character space) 
				ifTrue: [ true]
				ifFalse: 
					[answer nextPut: (upShiftNext ifTrue: [ch asUppercase] ifFalse: [ch]).
					 false]].
	answer := answer contents.
	extraChars isEmptyOrNil ifTrue: [^answer].
	(answer endsWith: extraChars) ifFalse: [answer := answer , extraChars].
	^answer