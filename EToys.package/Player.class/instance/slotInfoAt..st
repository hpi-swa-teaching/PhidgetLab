slots-user
slotInfoAt: slotName 
	| info |
	info := self slotInfo at: slotName ifAbsent: [nil].
	info ifNil: [self slotInfo at: slotName put: (info := SlotInformation new)].
	(info isSymbol) ifTrue: ["bkward compat"
			self slotInfo at: slotName put: (info := SlotInformation new type: info)].
	^info