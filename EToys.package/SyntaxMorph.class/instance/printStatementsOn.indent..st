printing
printStatementsOn: aStream indent: indent

	"seemed to be necessary to see top node in explorer"

	^parseNode printStatementsOn: aStream indent: indent