turtle view
providePossibleRestrictedView: anInteger

	| who |
	restrictedIndex := anInteger.
	who := scriptedPlayer whoAt: anInteger.
	restrictedWho = who ifTrue: [^ self].
	restrictedWho := who.
	stub who: who.
	who = 0 ifTrue: [self replaceTargetsWithExampler] ifFalse: [self replaceTargetsWithStub].
	self searchingViewerMorphs do: [:v | v updateWhoString].
