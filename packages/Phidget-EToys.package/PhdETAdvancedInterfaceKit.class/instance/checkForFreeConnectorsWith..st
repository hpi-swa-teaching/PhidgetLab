port handling
checkForFreeConnectorsWith: anEvent

	| inputCount sensorCount outputCount |
	inputCount := (self ports select: [:p | p class portType == #inputPort]) size.
	sensorCount := (self ports select: [:p | p class portType == #sensorPort]) size.
	outputCount := (self ports select: [:p | p class portType == #outputPort]) size.
	(self bin respondsTo: #submorphs)
		ifTrue: [
			(inputCount < self inputConnectors size)
				ifTrue: [self bin submorphs do: [:e| (e portType == #inputPort) ifTrue: [e show]]]
				ifFalse: [self bin submorphs do: [:e| (e portType == #inputPort) ifTrue: [e hide]]].
			(sensorCount < self sensorConnectors  size)
				ifTrue: [self bin submorphs do: [:e| (e portType == #sensorPort) ifTrue: [e show]]]
				ifFalse: [self bin submorphs do: [:e| (e portType == #sensorPort) ifTrue: [e hide]]].
			(outputCount < self outputConnectors size)
				ifTrue: [self bin submorphs do: [:e| (e portType == #outputPort) ifTrue: [e show]]]
				ifFalse: [self bin submorphs do: [:e| (e portType == #outputPort) ifTrue: [e hide]]]].
	