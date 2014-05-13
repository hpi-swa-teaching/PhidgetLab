accessing
selected: aBoolean
	aBoolean
		ifTrue: [self switchToChecked]
		ifFalse: [self switchToUnChecked]