card & stack
setTarget: aPlayer
	"Find my UpdatingStringMorph and set its getSelector, putSelector, and target"

	| updatingString |
	(updatingString := self readOut) ifNil: [^ self].
	updatingString putSelector: (self knownName asSetterSelector).
	updatingString getSelector: (self knownName asGetterSelector).
	updatingString target: aPlayer. 