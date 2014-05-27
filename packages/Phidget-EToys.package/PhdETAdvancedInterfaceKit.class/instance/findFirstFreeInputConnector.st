connectors
findFirstFreeInputConnector

	inputConnectors do: 
		[ :each | 
		each ifNil: [^ -1].
		(each connected) ifFalse: 
			[ ^ each number ]].
	^ -1