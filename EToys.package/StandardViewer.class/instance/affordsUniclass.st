initialization
affordsUniclass
	"Answer true iff the receiver operates on behalf of an object that is, or could become, a member of a Uniclass"

	| viewee |
	^(viewee := self objectViewed) belongsToUniClass or: 
			[((viewee isInteger) not and: [viewee isBehavior not]) 
				and: [self userLevel > 0]]