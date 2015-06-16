printing
printMethodTempsNodeOn: strm indent: level

	strm nextPut: $|; space.
	self
		submorphsDoIfSyntax: [ :sub |
			sub printOn: strm indent: level.
			strm space.
		]
		ifString: [ :sub |
			self printSimpleStringMorph: sub on: strm
		].
	strm nextPut: $|; crtab: level.
