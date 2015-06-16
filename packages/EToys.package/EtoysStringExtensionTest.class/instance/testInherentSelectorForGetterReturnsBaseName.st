as yet unclassified
testInherentSelectorForGetterReturnsBaseName
	"Inverse of #asGetterSelector"
	self assert: #foo equals: #getFoo inherentSelector.
	self assert: #foo equals: #getfoo inherentSelector.
	self assert: #foo equals: 'getFoo' inherentSelector.
	
	"Leaves other selector-like things alone, except for Symbol-ness"
	self assert: #foo equals: 'foo' inherentSelector.
	self assert: #foo equals: #foo inherentSelector.
	self assert: #get equals: #get inherentSelector.
	self assert: #GETAWAY equals: #GETAWAY inherentSelector.
	self assert: #geFoo equals: #geFoo inherentSelector.