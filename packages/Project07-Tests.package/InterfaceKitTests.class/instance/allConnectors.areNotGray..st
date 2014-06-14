running
allConnectors: connectorList areNotGray: aBoolean
	aBoolean 
		ifTrue: [^ connectorList allSatisfy: 
					[: each | (each color ~= Color gray) or: [each color ~= Color darkGray ]]]
		ifFalse: [^ connectorList allSatisfy: 
					[:each | (each color == Color gray) or: [each color == Color darkGray]]]