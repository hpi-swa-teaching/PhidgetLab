namespace
referenceSelectorFor: anObject
	self class instVarNames do:  "Just those added in the unique subclass"
		[:aName | (self instVarNamed: aName) == anObject
			ifTrue:
				[^ self referenceAccessorSelectorFor: aName]].
	^ self makeReferenceFor: anObject