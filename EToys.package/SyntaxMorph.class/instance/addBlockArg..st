layout
addBlockArg: aMorph
	"Add a temporary to a block or the method.  Return true if succeed"
	"(aMorph nodeClassIs: TempVariableNode) is known to be true."
	"***NOTE: This method should be combined with addTempVar:"

	| tempHolder tt var nn |
	owner isMethodNode ifTrue: [
		^ (self addTempVar: aMorph)].	"Node for them is not inside the block"
		"If exists, drop the temp in this block and let user extend it."
	nn := aMorph decompile string.	"name"
	(self isKnownVarName: nn) ifTrue: [^ false].	"already defined"

	tt := self firstSubmorph.
	tempHolder := tt firstSubmorph isSyntaxMorph 
				ifTrue: [(tt nodeClassIs: BlockArgsNode) 
							ifTrue: [tt] ifFalse: [nil]]
				ifFalse: [nil].

	tempHolder ifNil: ["make new row"
		tempHolder := self addRow: #blockarg1 on: (BlockArgsNode new).
		tempHolder addNoiseString: self noiseBeforeBlockArg.
		tempHolder submorphs last firstSubmorph emphasis: TextEmphasis bold emphasisCode.
		tempHolder useRoundedCorners.

		self addMorphFront: tempHolder.
		aMorph parseNode name: nn key: nn code: nil.
		aMorph parseNode asMorphicSyntaxIn: tempHolder.
		tempHolder cleanupAfterItDroppedOnMe.
		^ true].

	"Know this variable is not present, so add it"

	aMorph parseNode name: nn key: nn code: nil.
	tempHolder addMorphBack: (tempHolder transparentSpacerOfSize: 4@4).
	var := tempHolder addRow: #tempVariable on: aMorph parseNode.
	var layoutInset: 1.
	var addMorphBack: (self aSimpleStringMorphWith: nn).
	var cleanupAfterItDroppedOnMe.
	^ true
