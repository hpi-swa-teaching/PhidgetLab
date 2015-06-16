miscellaneous
sproutNewScriptor
	"The receiver, operating as a naked phrase tile, wishes to get iself placed in a nascent script"

	| newScriptor |

	self actualObject assureUniClass.
	newScriptor := self actualObject newScriptorAround:
		((self ownerThatIsA: Viewer orA: ScriptEditorMorph)
			ifNotNil:
				[self veryDeepCopy]
			ifNil:
				[self]).
	self currentHand attachMorph: newScriptor