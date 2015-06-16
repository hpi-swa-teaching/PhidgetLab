user interface
hasDismissButton
	submorphs isEmptyOrNil ifTrue: [^ false].
	^submorphs first allMorphs anySatisfy:
		[:possible |  (possible isKindOf: SimpleButtonMorph) and: [possible actionSelector == #dismiss]]