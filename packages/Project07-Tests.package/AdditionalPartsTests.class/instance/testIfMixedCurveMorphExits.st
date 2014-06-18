testing
testIfMixedCurveMorphExits

	| mixedCurveMorph |
	self shouldnt: [mixedCurveMorph := MixedCurveMorph new] raise: MessageNotUnderstood.