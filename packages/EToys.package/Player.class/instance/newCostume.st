costume
newCostume

	| reply |
	(reply := UIManager default 
		chooseFrom: self availableCostumeNames 
		values: self availableCostumeNames 
		title: 'choose a costume') ifNil: [^ self].
	self wearCostumeOfName: reply.
	self updateAllViewers