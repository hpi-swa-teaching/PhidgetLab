slots-user
removeSlotNamed: aSlotName
	"The user has requested that an instance variable be removed..."

	| aSetter aGetter |
	(self okayToRemoveSlotNamed: aSlotName) ifFalse:
		[^ self inform: ('Sorry, {1} is in
use in a script.' translated format: {aSlotName})].

	aSetter := aSlotName asSetterSelector.
	aGetter := aSlotName asGetterSelector.
	((self systemNavigation allCallsOn: aSetter) size > 0 or: [(self systemNavigation allCallsOn: aGetter) size > 0]) ifTrue:
		[self inform: 
'Caution!  There may be scripts belonging to
other objects that may rely on the presence of
this variable.  If there are, they may now be broken.
You may need to fix them up manually.' translated].

	self class removeInstVarName: aSlotName asString.

	self updateAllViewers