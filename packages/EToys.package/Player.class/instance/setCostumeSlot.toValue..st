costume
setCostumeSlot: setterSelector toValue: aValue
	| aCostume |
	(aCostume := self costumeRespondingTo: setterSelector) ifNotNil:
		[aCostume perform: setterSelector with: aValue]