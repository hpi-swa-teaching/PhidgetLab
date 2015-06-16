viewer
cacheSpecs: aMorph
	"For SyntaxMorph's type checking, cache the list of all viewer command specifications."

	aMorph world ifNil: [^ true].
	Preferences universalTiles ifFalse: [^ true].
	Preferences eToyFriendly ifFalse: [^ true].	"not checking"
	(Project current projectParameterAt: #fullCheck ifAbsent: [false]) 
		ifFalse: [^ true].	"not checking"

	SyntaxMorph initialize.