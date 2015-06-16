dropping/grabbing
assureParameterTilesValid
	"Make certain that parameter tiles in my interior are still type valid; replace any that now intimate type errors"

	self isTextuallyCoded ifFalse:
		[(self allMorphs select: [:m | m isKindOf: ParameterTile]) do:
			[:aTile | aTile assureTypeStillValid].
		self install]