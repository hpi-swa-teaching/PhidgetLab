updating
bringUpToDate
	"Bring all scriptors related to this method up to date.  Note that this will not change the senders of this method if the selector changed -- that's something still ahead."

	(ScriptEditorMorph allInstances select:
		[:m | (m playerScripted isMemberOf: self playerClass) and: [m scriptName == selector]])
			do:
				[:m | m bringUpToDate]