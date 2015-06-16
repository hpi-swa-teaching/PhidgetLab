mouse
prepareToUndoDropOf: aMorph 
	| m |
	m := self owner.
	[m isNil] whileFalse: 
			[(m isKindOf: ScriptEditorMorph) ifTrue: [^m prepareToUndoDropOf: aMorph].
			m := m owner]