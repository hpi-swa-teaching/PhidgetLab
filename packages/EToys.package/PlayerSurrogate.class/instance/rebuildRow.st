accessing
rebuildRow
	"Rebuild the row"

	| aThumbnail aTileButton aViewerButton |
	self removeAllMorphs.
	self layoutInset: 2; cellInset: 3.
	self beTransparent.
	aThumbnail := ThumbnailForAllPlayersTool new objectToView: playerRepresented viewSelector: #graphicForViewerTab.
	aThumbnail setBalloonText: 'Click here to reveal this object' translated.
	self addMorphBack: aThumbnail.
	aThumbnail on: #mouseUp send: #beRevealedInActiveWorld to: playerRepresented.
	
	"aMenuButton := IconicButton new labelGraphic: Cursor menu.
	aMenuButton target: self;
		actionSelector: #playerButtonHit;

		color: Color transparent;
		borderWidth: 0;
		shedSelvedge;
		actWhen: #buttonDown.
	aMenuButton setBalloonText: 'Press here to get a menu'.
	self addMorphBack: aMenuButton."
	aViewerButton := IconicButton new labelGraphic: (ScriptingSystem formAtKey: #Viewer).
	aViewerButton color: Color transparent; 
			actWhen: #buttonUp;
			actionSelector: #beViewed; target: playerRepresented;
			setBalloonText: 'click here to obtain this object''s Viewer' translated;
			color: Color transparent;
			borderWidth: 0;
			shedSelvedge.

	self addMorphBack: aViewerButton.

	aTileButton := IconicButton  new borderWidth: 0.
	aTileButton labelGraphic: (TileMorph new setToReferTo: playerRepresented) imageForm.
	aTileButton color: Color transparent; 
			actWhen: #buttonDown;
			actionSelector: #tearOffTileForSelf; target: playerRepresented;
			setBalloonText: 'click here to obtain a tile that refers to this player.' translated.
	self addMorphBack: aTileButton.

"	aNameMorph := UpdatingStringMorph new
		useStringFormat;
		target:  playerRepresented;
		getSelector: #nameForViewer;
		setNameTo: 'name';
		font: ScriptingSystem fontForNameEditingInScriptor.
	aNameMorph putSelector: #setName:.
		aNameMorph setProperty: #okToTextEdit toValue: true.
	aNameMorph step.
	self addMorphBack: aNameMorph.
	aNameMorph setBalloonText: 'Click here to edit the player''s name.'.	"

	