layout
addTempVar: aMorph 
	"know we are a block inside a MethodNode" 
	"(aMorph nodeClassIs: TempVariableNode) is known to be true."
	| tempHolder ii tt var nn |
	nn := aMorph decompile string.	"name"
	(self isKnownVarName: nn) ifTrue: [^ false].	"already defined"

	tempHolder := nil.
	(ii := owner submorphIndexOf: self) = 1 ifFalse: [
		tt := owner submorphs at: ii - 1.
		tt isSyntaxMorph ifTrue: [
			(tt nodeClassIs: MethodTempsNode) ifTrue: [tempHolder := tt].
			(tt nodeClassIs: UndefinedObject) ifTrue: [tempHolder := tt findA: MethodTempsNode]]].

	tempHolder ifNil: [
		tempHolder := owner addRow: #tempVariable on: MethodTempsNode new.
		tempHolder addNoiseString: self noiseBeforeBlockArg.
		tempHolder submorphs last firstSubmorph emphasis: TextEmphasis bold emphasisCode.
		tempHolder useRoundedCorners.

		owner addMorph: tempHolder inFrontOf: self.
		aMorph parseNode name: nn key: nn code: nil.
		aMorph parseNode asMorphicSyntaxIn: tempHolder.
		tempHolder cleanupAfterItDroppedOnMe.
		^ true].

	aMorph parseNode name: nn key: nn code: nil.
	tempHolder addMorphBack: (tempHolder transparentSpacerOfSize: 4@4).
	var := tempHolder addRow: #tempVariable on: aMorph parseNode.
	var layoutInset: 1.
	var addMorphBack: (self addString: nn special: false).
	var cleanupAfterItDroppedOnMe.
	^ true