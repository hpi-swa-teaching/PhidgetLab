port handling
checkForFreeConnectors

	| inputCount sensorCount outputCount |
	inputCount := (self ports select: [:p | p class portType == #inputPort]) size.
	sensorCount := (self ports select: [:p | p class portType == #sensorPort]) size.
	outputCount := (self ports select: [:p | p class portType == #outputPort]) size.
	(self bin respondsTo: #submorphs)
		ifTrue: [
			self bin submorphs do: [:e| (e portType == #inputPort) ifTrue: [(inputCount + e portsUsed <= self inputConnectors size) ifTrue: [e show] ifFalse: [e hide]].
										(e portType == #sensorPort) ifTrue: [(sensorCount + e portsUsed <= self sensorConnectors size) ifTrue: [e show] ifFalse: [e hide]].
										(e portType == #outputPort) ifTrue: [(outputCount + e portsUsed <= self outputConnectors size) ifTrue: [e show] ifFalse: [e hide]]]].