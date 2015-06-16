slot-kedama
newPatch

	| f |
	f := KedamaPatchMorph newExtent: self costume renderedMorph dimensions.
	f assuredPlayer assureUniClass.
	f setNameTo: (ActiveWorld unusedMorphNameLike: f innocuousName).
	self createSlotForPatch: f.
	self addToPatchDisplayList: f assuredPlayer.
	self costume world primaryHand attachMorph: f.
	^ f.
