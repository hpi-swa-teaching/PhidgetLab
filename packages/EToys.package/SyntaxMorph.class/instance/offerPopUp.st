pop ups
offerPopUp
	"Put up a halo to allow user to change
		Literals (Integer, true),
		Selector (beep: sound, +,-,*,//,\\, r:g:b:, setX: incX: decX: for any X,),
		Variable (Color),
		not AssignmentNode (:= inc dec),
	Extend arrows on each literal, variable, and message, (block that is by itself).
	Retract arrows on each literal or variable, or message or block that is an argument.
	Any literal can be changed by Shift-clicking and typing."

	| panel any upDown retract extend colorPatch edge dismiss rr duplicate |
	(self hasProperty: #myPopup) ifTrue: [^self].	"already has one"
	any := false.
	(upDown := self upDownArrows) ifNotNil: [any := true].	"includes menu of selectors"
	(retract := self retractArrow) ifNotNil: [any := true].
	(extend := self extendArrow) ifNotNil: [any := true].
	(dismiss := self dismisser) ifNotNil: [any := true].
	(duplicate := self duplicator) ifNotNil: [any := true].
	"(assign := self assignmentArrow) ifNotNil: [any := true].
			get from menu or any other assignment"
	submorphs last class == ColorTileMorph 
		ifFalse: [(colorPatch := self colorPatch) ifNotNil: [any := true]].
	any ifFalse: [^self].
	"Transcript cr; print: parseNode class; space; 
		print: (self hasProperty: #myPopup); endEntry."
	panel := (RectangleMorph new)
				color: Color transparent;
				borderWidth: 0.
	upDown ifNotNil: 
			[panel addMorphBack: upDown first.
			upDown first align: upDown first topLeft with: panel topLeft + (0 @ 0).
			panel addMorphBack: upDown second.
			upDown second align: upDown second topLeft
				with: upDown first bottomLeft + (0 @ 1).
			upDown size > 2 
				ifTrue: 
					[panel addMorphBack: upDown third.
					upDown third align: upDown third topLeft
						with: upDown first topRight + (2 @ 3)]].
	rr := self right.
	colorPatch ifNotNil: 
			[rr := rr + colorPatch submorphs first width + 1.
			self addMorphBack: colorPatch	"always in tile"
			"colorPatch align: colorPatch topLeft 
					with: panel topLeft + (1@1)"].
	retract ifNotNil: 
			[edge := panel submorphs isEmpty 
						ifTrue: [panel left]
						ifFalse: [panel submorphs last right].
			panel addMorphBack: retract.
			retract align: retract topLeft with: (edge + 2) @ (panel top + 3)].
	extend ifNotNil: 
			[edge := panel submorphs isEmpty 
						ifTrue: [panel left]
						ifFalse: [panel submorphs last right].
			panel addMorphBack: extend.
			extend align: extend topLeft with: (edge + 2) @ (panel top + 3)].
	duplicate ifNotNil: 
			[edge := panel submorphs isEmpty 
						ifTrue: [panel left]
						ifFalse: [panel submorphs last right].
			panel addMorphBack: duplicate.
			duplicate align: duplicate topLeft with: (edge + 2) @ (panel top + 1)].
	dismiss ifNotNil: 
			[edge := panel submorphs isEmpty 
						ifTrue: [panel left]
						ifFalse: [panel submorphs last right].
			panel addMorphBack: dismiss.
			dismiss align: dismiss topLeft with: (edge + 2) @ (panel top + 1)].
	"	assign ifNotNil: [
		edge := panel submorphs isEmpty 
			ifTrue: [panel left] 
			ifFalse: [panel submorphs last right].
		panel addMorphBack: assign.
		assign align: assign topLeft with: (edge+2) @ (panel top + 2)].
"
	panel align: panel topLeft with: rr @ (self top - 2).
	panel extent: panel submorphs last bottomRight - panel topLeft.
	self setProperty: #myPopup toValue: panel.
	self addMorphBack: panel	"Any reason ever to have panel below?"
	"(owner listDirection = #topToBottom and: [self listDirection = #leftToRight])
		ifTrue: [self addMorphBack: panel]
		ifFalse: [owner addMorph: panel after: self]."