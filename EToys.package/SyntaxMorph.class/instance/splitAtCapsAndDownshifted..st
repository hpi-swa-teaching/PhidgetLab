alans styles
splitAtCapsAndDownshifted: aString

	self flag: #yoCharCases.

	^String streamContents: [ :strm |
		aString do: [ :each | 
			each = $: ifFalse: [
				each isUppercase ifTrue: [strm nextPut: Character null;  
						 	nextPut: Character null; 
						 	nextPut: Character null; 
							nextPut: each asLowercase]
					ifFalse: [strm nextPut: each]
			].
		]
	].