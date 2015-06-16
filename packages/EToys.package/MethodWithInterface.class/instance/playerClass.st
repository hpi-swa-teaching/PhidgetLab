access
playerClass
	"Answer the playerClass associated with the receiver.  Note: fixes up cases where the playerClass slot was a Playerxxx object because of an earlier bug"

	^ (playerClass isKindOf: Class)
		ifTrue:
			[playerClass]
		ifFalse:
			[playerClass := playerClass class]