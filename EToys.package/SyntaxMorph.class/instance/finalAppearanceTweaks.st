node to morph
finalAppearanceTweaks
	| deletes |
	SizeScaleFactor ifNil: [SizeScaleFactor := 0.15].
	SizeScaleFactor := 0.0.	"disable this feature.  Default was for giant tiles"
	self usingClassicTiles 
		ifTrue: 
			[self 
				allMorphsDo: [:each | (each isSyntaxMorph) ifTrue: [each lookClassic]].
			^self].
	deletes := OrderedCollection new.
	self allMorphsDo: 
			[:each | | lw | 
			(each respondsTo: #setDeselectedColor) ifTrue: [each setDeselectedColor].
			"(each hasProperty: #variableInsetSize) ifTrue: [
			each layoutInset: 
				((each valueOfProperty: #variableInsetSize) * SizeScaleFactor) rounded]."
			each isSyntaxMorph 
				ifTrue: 
					[lw := each layoutInset.
					lw isPoint ifTrue: [lw := lw x].
					each layoutInset: lw @ 0	"(6 * SizeScaleFactor) rounded"]].
	deletes do: [:each | each delete]