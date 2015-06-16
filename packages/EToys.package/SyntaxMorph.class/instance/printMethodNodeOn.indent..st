printing
printMethodNodeOn: strm indent: level

	(self findA: SelectorNode) ifNil: [
		(self getHeader: strm) ifFalse: [^ self].		"might fail"
		strm crtab: level].
	self 
		submorphsDoIfSyntax: [ :sub |
			sub printOn: strm indent: level.
			strm crtab: level.
		]
		ifString: [ :sub |
			self printSimpleStringMorph: sub on: strm
		]. 
	strm last == $. ifTrue: [strm skip: -1].  "ugh!  erase duplicate final period"