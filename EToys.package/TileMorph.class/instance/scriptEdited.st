code generation
scriptEdited
	"Tell the scriptEditor who I belong to that I have changed.  "
	| him |
	(him := self outermostMorphThat: [:m| m isKindOf: ScriptEditorMorph])
		ifNotNil: [him scriptEdited]