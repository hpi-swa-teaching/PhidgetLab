background
beDefaultsForNewCards
	"Make the values that I see here all be accepted as defaults for new cards"

	self currentPage submorphs do:
		[:aMorph | aMorph holdsSeparateDataForEachInstance ifTrue:
			[aMorph setAsDefaultValueForNewCard]]