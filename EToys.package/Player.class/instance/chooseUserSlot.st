slots-user
chooseUserSlot
	| names result |
	(names := self slotNames) size = 1
		ifTrue: [^ names first].
	result := UIManager default 
		chooseFrom: names 
		values: names 
		title: 'Please choose a variable'.
	result isEmptyOrNil ifTrue: [^ nil].
	^ result