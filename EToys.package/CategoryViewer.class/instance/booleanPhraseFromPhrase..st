support
booleanPhraseFromPhrase: phrase
	"Answer, if possible, a boolean-valued phrase derived from the phrase provided"

	|  retrieverOp retrieverTile |
	(phrase isKindOf: ParameterTile) ifTrue: [^ phrase booleanComparatorPhrase].
	phrase isBoolean ifTrue: [^ phrase].
	((scriptedPlayer respondsTo: #costume) 
		and:[scriptedPlayer costume isInWorld not]) ifTrue: [^ Array new].
	((retrieverTile := phrase submorphs last) isKindOf: TileMorph) ifFalse: [^ phrase].
	retrieverOp := retrieverTile operatorOrExpression.

	(Vocabulary vocabularyForType: phrase resultType)
		affordsCoercionToBoolean ifTrue: [
			retrieverOp =  #getPatchValueIn: ifTrue: [
				^ self booleanPhraseForGetPatchValueOfType: phrase resultType retrieverOp: retrieverOp player: phrase actualObject.
			].
			retrieverOp =  #getRedComponentIn: ifTrue: [
				^ self booleanPhraseForGetColorComponentOfType: phrase resultType componentName: #red  retrieverOp: retrieverOp player: phrase actualObject.
			].
			retrieverOp =  #getGreenComponentIn: ifTrue: [
				^ self booleanPhraseForGetColorComponentOfType: phrase resultType componentName: #green  retrieverOp: retrieverOp player: phrase actualObject.
			].
			retrieverOp =  #getBlueComponentIn: ifTrue: [
				^ self booleanPhraseForGetColorComponentOfType: phrase resultType componentName: #blue retrieverOp: retrieverOp player: phrase actualObject.
			].
			retrieverOp = #getUphillIn: ifTrue: [
				^ self booleanPhraseForGetUpHillOfType: phrase resultType retrieverOp: retrieverOp player: phrase actualObject.
			].
			retrieverOp = #getDistanceTo: ifTrue: [
				^ self booleanPhraseForGetDistanceToOfType: phrase resultType retrieverOp: retrieverOp player: phrase actualObject.
			].
			retrieverOp = #getAngleTo: ifTrue: [
				^ self booleanPhraseForGetAngleToOfType: phrase resultType retrieverOp: retrieverOp player: phrase actualObject.
			].
			retrieverOp = #bounceOn: ifTrue: [
				^ self booleanPhraseForBounceOnOfType: phrase resultType retrieverOp: retrieverOp player: phrase actualObject.
			].
			(retrieverOp = #bounceOn:color: or: [retrieverOp = #bounceOnColor:]) ifTrue: [
				^ self booleanPhraseForBounceOnColorOfType: phrase resultType retrieverOp: retrieverOp player: phrase actualObject.
			].
			retrieverOp = #getTurtleAt: ifTrue: [
				^ self booleanPhraseForGetTurtleAtOfType: phrase resultType retrieverOp: retrieverOp player: phrase actualObject.
			].
			retrieverOp = #getTurtleOf: ifTrue: [
				^ self booleanPhraseForGetTurtleOfOfType: phrase resultType retrieverOp: retrieverOp player: phrase actualObject.
			].

			^ self booleanPhraseForRetrieverOfType: phrase resultType retrieverOp: retrieverOp player: phrase actualObject.

		].
	^ phrase