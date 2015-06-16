copying
copyUniClassWith: deepCopier
	"my class is a subclass of Player.  Return another class just like my class.  Share the costume list."
	| newCls |
	newCls := self class officialClass 
		newUniqueClassInstVars: self class instanceVariablesString 
		classInstVars: self class class instanceVariablesString.
	newCls copyMethodDictionaryFrom: self class.
	newCls class copyMethodDictionaryFrom: self class class.
	newCls scripts: self class privateScripts.	"duplicate this in mapUniClasses"
	newCls slotInfo: (self class privateSlotInfo veryDeepCopyWith: deepCopier).
	newCls copyAddedStateFrom: self class.  "All class inst vars for inter Player refs"
	^ newCls
