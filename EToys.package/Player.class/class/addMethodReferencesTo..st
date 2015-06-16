user-scripted subclasses
addMethodReferencesTo: aCollection
	"For each extant script in the receiver, add a MethodReference object"

	
	self scripts do:
		[:aScript | | sel |
			(sel := aScript selector) ifNotNil:
				[aCollection add: (MethodReference class: self selector: sel)]]