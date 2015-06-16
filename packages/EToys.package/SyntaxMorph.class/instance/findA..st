submorphs-accessing
findA: aClass
	| ans |
	"Allow finding on the class of the parseNode"

	(ans := super findA: aClass) ifNotNil: [^ ans].
	submorphs do: [:ss | 
		ss isSyntaxMorph ifTrue: [
			ss parseNode class == aClass ifTrue: [^ ss]]].
	^ nil