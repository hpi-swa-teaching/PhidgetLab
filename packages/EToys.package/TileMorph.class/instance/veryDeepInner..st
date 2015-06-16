copying
veryDeepInner: deepCopier
	"Copy all of my instance variables.  Some need to be not copied at all, but shared.  	Warning!!  Every instance variable defined in this class must be handled.  We must also implement veryDeepFixupWith:.  See DeepCopier class comment."

super veryDeepInner: deepCopier.
type := type veryDeepCopyWith: deepCopier.
slotName := slotName veryDeepCopyWith: deepCopier.
literal := literal veryDeepCopyWith: deepCopier.
operatorOrExpression := operatorOrExpression veryDeepCopyWith: deepCopier.
"actualObject := actualObject.		Weakly copied"
downArrow := downArrow veryDeepCopyWith: deepCopier.
upArrow := upArrow veryDeepCopyWith: deepCopier.
suffixArrow := suffixArrow veryDeepCopyWith: deepCopier.
typeColor := typeColor veryDeepCopyWith: deepCopier.
lastArrowTick := lastArrowTick veryDeepCopyWith: deepCopier.
nArrowTicks := nArrowTicks veryDeepCopyWith: deepCopier.
operatorReadoutString := operatorReadoutString veryDeepCopyWith: deepCopier.
possessive := possessive veryDeepCopyWith: deepCopier.
retractArrow := retractArrow veryDeepCopyWith: deepCopier.
vocabularySymbol := vocabularySymbol.  "Weakly copied"
vocabulary := nil.   "obsolete - clobbered"