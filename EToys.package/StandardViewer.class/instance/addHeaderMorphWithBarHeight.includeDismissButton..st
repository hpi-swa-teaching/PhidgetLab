initialization
addHeaderMorphWithBarHeight: anInteger includeDismissButton: aBoolean
	"Add the header morph to the receiver, using anInteger as a guide for its height, and if aBoolean is true, include a dismiss buton for it"

	| header aFont aButton aTextMorph nail wrpr costs headWrapper |
	header := AlignmentMorph newRow color: self color muchLighter; wrapCentering: #center; cellPositioning: #leftCenter.
	aFont := Preferences standardButtonFont.
	aBoolean ifTrue:
		[aButton := self tanOButton.
		header addMorph: aButton.
		aButton target: self;
				actionSelector: #dismiss;
				setBalloonText: 'remove this entire Viewer from the screen
don''t worry -- nothing will be lost!.' translated.
		header addTransparentSpacerOfSize: 4@1].

	aButton := IconicButton new borderWidth: 0;
			labelGraphic: (ScriptingSystem formAtKey: #AddCategoryViewer); color: Color transparent; 
			actWhen: #buttonDown;
			target: self;
			actionSelector: #addCategoryViewer;
			setBalloonText: 'click here to add
another category pane' translated;
			shedSelvedge.
	header addMorphBack: aButton.
	header addTransparentSpacerOfSize: 4@1.

	costs := scriptedPlayer costumes.
	costs ifNotNil:
	[(costs size > 1 or: [costs size = 1 and: [costs first ~~ scriptedPlayer costume]]) ifTrue:
		[header addUpDownArrowsFor: self.
		(wrpr := header submorphs last) submorphs second setBalloonText: 'switch to previous costume' translated.	
		wrpr submorphs first  setBalloonText: 'switch to next costume' translated]].	

	nail := (self hasProperty: #noInteriorThumbnail)
		ifFalse:
			[ThumbnailMorph new objectToView: scriptedPlayer viewSelector: #costume]
		ifTrue:
			[ImageMorph new image: Cursor menu].
	nail on: #mouseDown send: #offerViewerMenuForEvt:morph: to: scriptedPlayer.
	header addMorphBack: nail.
	nail setBalloonText: 'click here to get a menu
that will allow you to
add a variable,
tear off a tile, etc..' translated.
	(self hasProperty: #noInteriorThumbnail)
		ifFalse:
			[nail borderWidth: 3; borderColor: #raised].

	header addTransparentSpacerOfSize: 5@5.

"	aButton := SimpleButtonMorph new target: self; actionSelector: #newEmptyScript; label: 'S' translated font: (aFont := StrikeFont familyName: #ComicBold size: 16);  color: Color transparent; borderWidth: 0; actWhen: #buttonDown.
	aButton setBalloonText: 'drag from here to
create a new script
for this object' translated.	
	header addMorphBack: aButton.

	header addTransparentSpacerOfSize: 8@5."
	
	aButton := SimpleButtonMorph new target: scriptedPlayer; actionSelector: #addInstanceVariable; label: 'v' translated font: (aFont emphasized: 1);  color: Color transparent; borderWidth: 1; actWhen: #buttonUp.
	"aButton firstSubmorph color: Color gray."
	aButton setBalloonText: 'click here to add a variable
to this object.' translated.
	header addMorphBack: aButton.

	header addTransparentSpacerOfSize: 5@5.
	self viewsMorph ifTrue: [scriptedPlayer costume assureExternalName].
	aTextMorph := UpdatingStringMorph new
		useStringFormat;
		target:  scriptedPlayer;
		getSelector: #nameForViewer;
		setNameTo: 'name';
		font: ScriptingSystem fontForNameEditingInScriptor.
	self viewsMorph ifTrue:
		[aTextMorph putSelector: #setName:.
		aTextMorph setProperty: #okToTextEdit toValue: true].
	aTextMorph step.
	header  addMorphBack: aTextMorph.
	aTextMorph setBalloonText: 'Click here to edit the player''s name.' translated.	

	header beSticky.
	anInteger > 0
		ifTrue:
			[headWrapper := AlignmentMorph newColumn color: self color.
			headWrapper addTransparentSpacerOfSize: (0 @ anInteger).
			headWrapper addMorphBack: header.
			self addMorph: headWrapper]
		ifFalse:
			[self addMorph: header]