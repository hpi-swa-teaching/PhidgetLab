kedama
firstMorphBearingKedamaPlayer

	self allMorphsWithPlayersDo: [:e :p | (p isKindOf: KedamaExamplerPlayer) ifTrue: [^ e]].
	^ nil.
