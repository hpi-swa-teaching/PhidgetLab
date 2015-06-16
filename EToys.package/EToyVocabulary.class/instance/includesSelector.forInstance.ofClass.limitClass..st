initialization
includesSelector: aSelector forInstance: anInstance ofClass: aTargetClass limitClass: mostGenericClass
	"Answer whether the vocabulary includes the given selector for the given class (and instance, if provided), only considering method implementations in mostGenericClass and lower"

	| classToUse aClass |
	(aTargetClass isUniClass and:
		[(aTargetClass namedTileScriptSelectors includes: aSelector) or:
			[aTargetClass slotInfo keys anySatisfy:
				[:anInstVarName | (anInstVarName asGetterSelector) = aSelector or: [(anInstVarName asSetterSelector) = aSelector]]]])
					 ifTrue: [^ true].

	(methodInterfaces includesKey: aSelector) ifFalse: [^ false].
	classToUse := self classToUseFromInstance: anInstance ofClass: aTargetClass.
	^ (aClass := classToUse whichClassIncludesSelector: aSelector)
		ifNil:
			[false]
		ifNotNil:
			[aClass includesBehavior: mostGenericClass]
