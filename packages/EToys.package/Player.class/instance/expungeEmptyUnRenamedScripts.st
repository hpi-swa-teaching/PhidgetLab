scripts-kernel
expungeEmptyUnRenamedScripts
	"Track down and destroy -- and destroy screen artifacts relating to -- all scripts belonging to the receiver that have not been named and that have no lines of code in them"

	| any |
	any := false.
	self class namedTileScriptSelectors do:
		[:aSel |
			(self isExpendableScript: aSel)
				ifTrue:
					[any := true.
					self removeScriptWithoutUpdatingViewers: aSel]].
	any ifTrue:
		[self updateAllViewersAndForceToShow: #scripts]
			
