testing
isDefault

	^ super isDefault and: [layoutPolicy isNil and: [layoutProperties isNil]].
