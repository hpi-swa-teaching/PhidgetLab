initialization
initialize
	"initialize the state of the receiver"

	| r stringMorph |
	super initialize.
	self layoutInset: 2.
	self listDirection: #topToBottom.
	self hResizing: #shrinkWrap; vResizing: #shrinkWrap; cellInset: (0 @ 1); minCellSize: (200@14).
	"NB: hResizing gets reset to #spaceFill below, after the standalone structure is created"
	r := AlignmentMorph newRow color: color;
				 layoutInset: 0.
	r setProperty: #demandsBoolean toValue: true.
	r addMorphBack: (Morph new color: color;
			 extent: 2 @ 5).
	"spacer"
	stringMorph := StringMorph new contents: 'Test' translated.
	stringMorph name: 'Test'.
	r addMorphBack: stringMorph.
	r addMorphBack: (Morph new color: color;
			 extent: 5 @ 5).
	"spacer"
	r addMorphBack: (testPart := BooleanScriptEditor new borderWidth: 0;
					 layoutInset: 1).
	testPart color: Color transparent.
	testPart hResizing: #spaceFill.
	self addMorphBack: r.
	r := AlignmentMorph newRow color: color;
				 layoutInset: 0.
	r addMorphBack: (Morph new color: color;
			 extent: 30 @ 5).
	"spacer"
	stringMorph := StringMorph new contents: 'Yes' translated.
	stringMorph name: 'Yes'.
	r addMorphBack: stringMorph.
	r addMorphBack: (Morph new color: color;
			 extent: 5 @ 5).
	"spacer"
	r addMorphBack: (yesPart := ScriptEditorMorph new borderWidth: 0;
					 layoutInset: 2).
	yesPart hResizing: #spaceFill.
	yesPart color: Color transparent.
	self addMorphBack: r.
	r := AlignmentMorph newRow color: color;
				 layoutInset: 0.
	r addMorphBack: (Morph new color: color;
			 extent: 35 @ 5).
	"spacer"
	stringMorph := StringMorph new contents: 'No' translated.
	stringMorph name: 'No'.
	r addMorphBack: stringMorph.
	r addMorphBack: (Morph new color: color;
			 extent: 5 @ 5).
	"spacer"
	r addMorphBack: (noPart := ScriptEditorMorph new borderWidth: 0;
					 layoutInset: 2).
	noPart hResizing: #spaceFill.
	noPart color: Color transparent.
	self addMorphBack: r.
	self bounds: self fullBounds.
	self updateWordingToMatchVocabulary.
 	self hResizing:#spaceFill
