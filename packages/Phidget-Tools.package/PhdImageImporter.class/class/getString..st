accessing
getString: aName

	| aForm string |
	aForm := ImageReadWriter formFromFileNamed: (self getFullPathFrom: aName).
	string := aForm storeString.
	Transcript clear show: '''', string, ''''.
	^ string