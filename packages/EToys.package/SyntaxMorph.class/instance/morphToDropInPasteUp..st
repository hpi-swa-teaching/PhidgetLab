dropping/grabbing
morphToDropInPasteUp: aPasteUp
	"If property #beScript is true, create a scriptor around me."

	| actualObject itsSelector aScriptor adjustment handy tw blk |
	(self valueOfProperty: #beScript ifAbsent: [false]) ifFalse: [^ self].
	self removeProperty: #beScript.
	actualObject := self actualObject ifNil: [
					self valueOfProperty: #scriptedPlayer ifAbsent: [nil]].
	actualObject ifNil: [^ self].
	self removeProperty: #scriptedPlayer.
	actualObject assureUniClass.

	itsSelector := self userScriptSelector.
	aScriptor := itsSelector isEmptyOrNil
		ifFalse:
			[adjustment := 0@0.
			actualObject scriptEditorFor: itsSelector]
		ifTrue:
			[adjustment := 60 @ 20.
			actualObject newScriptorAround: self].
	aScriptor ifNil: [^self].
	handy := aPasteUp primaryHand.

	aScriptor position: handy position - adjustment.
	aPasteUp addMorphFront: aScriptor.	"do this early so can find World"
	aScriptor showingMethodPane ifFalse: [
		"(tw := aScriptor findA: TwoWayScrollPane) ifNil:
			[itsSelector ifNil: ['blank script'.
				tw := aScriptor findA: TwoWayScrollPane.
				blk := (tw scroller findA:  SyntaxMorph ""MethodNode"") findA: BlockNode.
				blk addMorphFront: self]].
		"
		SyntaxMorph setSize: nil andMakeResizable: aScriptor.
		].
	^ aScriptor
