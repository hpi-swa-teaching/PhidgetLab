slots-user
chooseSlotTypeFor: aGetter
	"Let the user designate a type for the slot associated with the given getter"

	| typeChoices typeChosen slotName |
	slotName := aGetter inherentSelector.
	typeChoices := Vocabulary typeChoices.
	typeChosen := UIManager default 
		chooseFrom: (typeChoices collect: [:t | t translated]) 
		values: typeChoices
		title: ('Choose the TYPE
for ' translated, slotName, '
(currently ' translated, (self slotInfoAt: slotName) type translated, ')').
	typeChosen isEmptyOrNil ifTrue: [^ self].
	(self typeForSlot: slotName) capitalized = typeChosen ifTrue: [^ self].

	(self slotInfoAt: slotName) type: typeChosen.
	self class allInstancesDo:   "allSubInstancesDo:"
		[:anInst | anInst instVarNamed: slotName asString put: 
			(anInst valueOfType: typeChosen from: (anInst instVarNamed: slotName))].
	self updateAllViewers.	"does siblings too"
	self changeTypesInWatchersOf: slotName  "does siblings too"
