turtles
makePrototypeOfExampler: examplerPlayer color: cPixel

	| array inst info |
	array := examplerPlayer turtles.
	info := array info.
	array size > 0 ifTrue: [
		inst := array makePrototypeFromFirstInstance.
		cPixel ifNotNil: [inst at: (info at: #color) put: cPixel].
		^ inst.
	].

	inst := Array new: array instSize.
	info associationsDo: [:assoc |
		inst at: (assoc value) put: (examplerPlayer perform: assoc key asGetterSelector).
	].
	cPixel ifNotNil: [inst at: (info at: #color) put: cPixel] ifNil: [inst at: (info at: #color) put: ((examplerPlayer getColor pixelValueForDepth: 32) bitAnd: 16rFFFFFF)].
	inst at: (info at: #visible) put: ((inst at: (info at: #visible)) ifTrue: [1] ifFalse: [0]).
	^ inst.
