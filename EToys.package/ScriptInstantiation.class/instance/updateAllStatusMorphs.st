status control
updateAllStatusMorphs
	"Update all status morphs bound to the receiver.  Done with a sledge-hammer at present."

	(self currentWorld allMorphs select: [:m | (m isKindOf: ScriptStatusControl) and:
			[m scriptInstantiation == self]]) do:
		[:aStatusControl | self updateStatusMorph: aStatusControl]