accessing
privateSetLook: aSymbol to: aFormOrMorph 
	| f |
	f := (aFormOrMorph isForm) 
				ifTrue: [aFormOrMorph]
				ifFalse: [aFormOrMorph imageForm].
	self stateCostumes at: aSymbol put: f