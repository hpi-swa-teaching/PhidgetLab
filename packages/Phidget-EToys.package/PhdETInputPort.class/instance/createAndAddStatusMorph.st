initialization
createAndAddStatusMorph

	statusMorph := PhdETOnOffStatusMorph new.
	self addMorph: statusMorph.
	statusMorph position:
		( self width // 2 - ( statusMorph width // 2 ) ) @
		( self bottom - statusMorph height - 5 ).