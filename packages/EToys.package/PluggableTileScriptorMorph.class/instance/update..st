updating
update: aSymbol
	"Update the receiver in the manner suggested by aSymbol"

	aSymbol == #flash ifTrue: [^ self flash].
