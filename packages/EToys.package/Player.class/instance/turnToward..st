scripts-standard
turnToward: aPlayer
	"Turn to face the given player, unless our positions coincide."

	|  aCostume myPosition itsPosition |
	(aPlayer == nil or: [aPlayer == self]) ifTrue: [^ self].
	aCostume := self costume.
	aCostume isWorldMorph ifTrue: [^ self].
	(self overlaps: aPlayer) ifFalse:
		[((myPosition := aCostume referencePosition) = (itsPosition := aPlayer costume referencePosition))
			ifFalse: "avoid division by zero ;-("
				[self setHeading: (myPosition bearingToPoint: itsPosition)]]
