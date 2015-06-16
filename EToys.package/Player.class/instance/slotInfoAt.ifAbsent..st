slots-user
slotInfoAt: slotName ifAbsent: aBlock
	"If the receiver has a slot of the given name, answer its slot info, else answer nil"

	| info |
	info := self slotInfo at: slotName ifAbsent: [^ aBlock value].
	^ info