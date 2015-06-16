type
assureTypeStillValid
	"Consider the possibility that the parameter type of my surrounding method has changed and that hence I no longer represent a possible value for the parameter of the script.  If this condition obtains, then banish me in favor of a default literal tile of the correct type"

	(self ownerThatIsA: TilePadMorph) ifNotNil:
		[:aPad | aPad type = self scriptEditor typeForParameter ifFalse:
			[aPad setToBearDefaultLiteral]]