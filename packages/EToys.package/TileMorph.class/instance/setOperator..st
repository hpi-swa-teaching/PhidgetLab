initialization
setOperator: aString
	"Set the operator symbol from the string provided"

	self setOperator: aString andUseWording:  (self currentVocabulary tileWordingForSelector: aString)