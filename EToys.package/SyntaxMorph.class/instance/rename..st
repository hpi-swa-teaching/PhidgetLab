accessing
rename: newSelector
	| keywords mainSel list last |
	"Attempt to change the name as listed in my tiles.  Can change the number of argumtents.  MethodNode (SelectorNode (SelectorNode (string))) or MethodNode (SelectorNode (SelectorNode (string) TempVarNode() SelectorNode (string) TempVarNode()))"

	self isMethodNode ifFalse: [
		self rootTile == self ifTrue: [^ self].  "not in a script"
		^ self rootTile rename: newSelector  "always do at the root"].

	keywords := newSelector keywords.
	mainSel := self findA: SelectorNode.
	list := mainSel submorphs select: [:mm | 
		mm isSyntaxMorph and: [mm parseNode class == SelectorNode]].
	1 to: (list size min: keywords size) do: [:ind |
		((list at: ind) findA: UpdatingStringMorph) contents: (keywords at: ind)].
	keywords size + 1 to: list size do: [:ind | "removing keywords"
		[last := mainSel submorphs last.
		 (last isSyntaxMorph and: [last parseNode class == TempVariableNode])] whileFalse: [
				last delete].
		[last := mainSel submorphs last.
		 (last isSyntaxMorph and: [last parseNode class == SelectorNode])] whileFalse: [
				last delete].	"the TempVariableNode and others"
		mainSel submorphs last delete.	"the SelectorNode"
		].
	list size + 1 to: keywords size do: [:ind | "adding keywords"
		"add a SelectorNode, add a spacer, add a TempVarNode"
		mainSel addToken: (keywords at: ind) type: #keyword1 
			on: (SelectorNode new key: (keywords at: ind) code: nil).
		mainSel addMorphBack: (mainSel transparentSpacerOfSize: 4@4).
		(TempVariableNode new name: 'arg', ind printString index: ind type: nil scope: nil)
			 asMorphicSyntaxIn: mainSel].