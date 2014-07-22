testing
test05returnsImages

	| returnedObject |
	returnedObject := PhdETImageLoader default load: #Light.

	self assert: returnedObject class equals: Form