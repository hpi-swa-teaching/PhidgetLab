printing
printVariableNodeOn: strm indent: level

	"nil out any old association"
	parseNode key isVariableBinding ifTrue: [
		parseNode 
			name: parseNode name 
			key: nil 
			code: parseNode code
	].
	self
		submorphsDoIfSyntax: [ :sub |
			sub printOn: strm indent: level.
			strm ensureASpace.
		]
		ifString: [ :sub |
			self printSimpleStringMorph: sub on: strm
		].
