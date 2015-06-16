viewer
newScriptorAround: aPhrase
	"Sprout a scriptor around aPhrase, thus making a new script.  aPhrase may either be a PhraseTileMorph (classic tiles 1997-2001) or a SyntaxMorph (2001 onward)"

	| aScriptEditor aUniclassScript tw blk |
	aUniclassScript := self class permanentUserScriptFor: self unusedScriptName player: self.
	aScriptEditor := aUniclassScript instantiatedScriptEditorForPlayer: self.

	Preferences universalTiles ifTrue: [
		aScriptEditor install.
		"aScriptEditor hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			cellPositioning: #topLeft;
			setProperty: #autoFitContents toValue: true."
		aScriptEditor insertUniversalTiles.  "Gets an empty SyntaxMorph for a MethodNode"
		tw := aScriptEditor findA: TwoWayScrollPane.
		aPhrase ifNotNil:
			[blk := (tw scroller findA: SyntaxMorph "MethodNode") findA: BlockNode.
			blk addMorphFront: aPhrase.
			aPhrase accept.
		].
		SyntaxMorph setSize: nil andMakeResizable: aScriptEditor.
	] ifFalse: [
		aPhrase 
				ifNotNil: [aScriptEditor phrase: aPhrase]	"does an install"
				ifNil: [aScriptEditor install]
	].
	self class allSubInstancesDo: [:anInst | anInst scriptInstantiationForSelector: aUniclassScript selector].
		"The above assures the presence of a ScriptInstantiation for the new selector in all siblings"
	self updateAllViewersAndForceToShow: #scripts.
	^ aScriptEditor