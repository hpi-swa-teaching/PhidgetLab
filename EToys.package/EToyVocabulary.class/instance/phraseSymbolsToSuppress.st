method list
phraseSymbolsToSuppress
	"Answer a dictatorially-imposed list of phrase-symbols that are to be suppressed from viewers when the eToyFriendly preference is set to true.  This list at the moment corresponds to the wishes of Alan and Kim and the LA teachers using Squeak in school-year 2001-2"

	^ Preferences eToyFriendly
		ifTrue:
			[#(moveToward: followPath goToRightOf:
				getViewingByIcon initiatePainting
				append: prepend: getClipSubmorphs touchesA:)]
		ifFalse:
			[#()]