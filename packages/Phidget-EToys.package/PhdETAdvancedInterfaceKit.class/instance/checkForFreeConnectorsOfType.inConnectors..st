connectors
checkForFreeConnectorsOfType: aPortSymbol inConnectors: connectors

	| usedPorts |
	usedPorts := (self ports select: [:p | p class portType == aPortSymbol]) size.
	(self bin respondsTo: #submorphs)
		ifTrue: [
			self bin submorphs do: [:e| 
				(e portType == aPortSymbol) ifTrue: [(usedPorts + e portsUsed <= connectors size) ifTrue: [e show] ifFalse: [e hide]]]].