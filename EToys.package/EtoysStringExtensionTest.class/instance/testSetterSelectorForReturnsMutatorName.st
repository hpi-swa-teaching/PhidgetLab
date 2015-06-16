as yet unclassified
testSetterSelectorForReturnsMutatorName
	self assert: #setFoo: equals: #foo asSetterSelector.
	self assert: #setFoo: equals: #Foo asSetterSelector.
	self assert: #setFoo: equals: 'foo' asSetterSelector.