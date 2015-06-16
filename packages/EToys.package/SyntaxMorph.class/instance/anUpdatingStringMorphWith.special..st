alans styles
anUpdatingStringMorphWith: aString special: aBoolean

	self alansTest1 ifTrue: [
		^(aBoolean ifTrue: [SyntaxUpdatingStringMorph] ifFalse: [UpdatingStringMorph])
			 contents: aString
			font: self alansCurrentFontPreference
	].
	^UpdatingStringMorph contents: aString