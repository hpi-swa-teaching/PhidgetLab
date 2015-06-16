as yet unclassified
testGetterSelectorForReturnsAccessorName
	self assert: #getFoo equals: #foo asGetterSelector.
	self assert: #getFoo equals: #Foo asGetterSelector.
	self assert: #getFoo equals: 'foo' asGetterSelector.
	
	"Special cases:"
	self assert: #seesColor: equals: 'isOverColor:' asGetterSelector.
	self assert: #seesColor: equals: #isOverColor: asGetterSelector.
	self assert: #getNewClone equals: 'copy' asGetterSelector.
	self assert: #getNewClone equals: #copy asGetterSelector.