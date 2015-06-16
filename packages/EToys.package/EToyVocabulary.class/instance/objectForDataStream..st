initialization
objectForDataStream: refStrm
	"I am about to be written on an object file.  Write a path to me in the other system instead."

	vocabularyName == #eToy ifFalse: [^ self].

	^ DiskProxy 
		global: #Vocabulary
		selector: #vocabularyNamed: 
		args: (Array with: vocabularyName)
