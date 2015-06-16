user interface
adjustHelpMessage
	"Adjust the help message to reflect the new literal"

	(ScriptingSystem helpStringOrNilForOperator: literal) ifNotNil:
		[:aString |
			self labelMorph setBalloonText: aString]