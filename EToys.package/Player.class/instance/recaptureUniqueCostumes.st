costume
recaptureUniqueCostumes
	"Recapture all unique sketch-like costumes. Debugging only."
	| unique |
	costumes ifNil:[^self].
	unique := PluggableSet new 
				equalBlock:[:s1 :s2| s1 form == s2 form];
				hashBlock:[:s| s form scaledIdentityHash].
	unique addAll: (costumes select:[:c| c isSketchMorph]).
	unique := unique asIdentitySet.
	costumes := costumes select:[:c|
		(c isSketchMorph) not or:[unique includes: c]].
