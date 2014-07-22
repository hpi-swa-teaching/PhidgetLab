testing
test05returnsImages

	| returnedObject |
	returnedObject := PhdImageLoader default load: #Light.

	self assert: returnedObject class equals: Form