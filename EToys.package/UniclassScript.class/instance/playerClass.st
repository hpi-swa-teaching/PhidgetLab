access
playerClass
	"Answer the playerClass associated with the receiver"

	^ playerClass ifNil:
		[playerClass := currentScriptEditor playerScripted ifNotNil: [currentScriptEditor playerScripted class]]