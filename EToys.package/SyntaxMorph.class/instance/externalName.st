viewer
externalName

	^ self knownName ifNil: [
		parseNode ifNil: ['Syntax -- (extra layer)']
				ifNotNil: [self parseNode class printString]]