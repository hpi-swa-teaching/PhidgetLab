code generation
storeCodeOn: aStream indent: tabCount

	aStream nextPut: $(.
	testPart storeCodeOn: aStream indent: 0.
	aStream nextPut: $); cr.

	tabCount + 1 timesRepeat: [aStream tab].
	aStream nextPutAll: 'ifTrue: ['; cr.
	self storeCodeBlockFor: yesPart on: aStream indent: tabCount + 2.
	aStream nextPut: $]; cr.
	tabCount + 1 timesRepeat: [aStream tab].
	aStream nextPutAll: 'ifFalse: ['; cr.
	self storeCodeBlockFor: noPart on: aStream indent: tabCount + 2.
	aStream nextPut: $].
