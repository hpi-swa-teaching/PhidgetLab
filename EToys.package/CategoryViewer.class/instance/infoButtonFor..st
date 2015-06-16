entries
infoButtonFor: aScriptOrSlotSymbol
	"Answer a fully-formed morph that will serve as the 'info button' alongside an entry corresponding to the given slot or script symbol.  If no such button is appropriate, answer a transparent graphic that fills the same space."

	| aButton |
	(self wantsRowMenuFor: aScriptOrSlotSymbol) ifFalse:
		["Fill the space with sweet nothing, since there is no meaningful menu to offer"
		aButton := RectangleMorph new beTransparent extent: (17@20).
		aButton borderWidth: 0.
		^ aButton].

	aButton := IconicButton new labelGraphic: Cursor menu.
	aButton target: scriptedPlayer;
		actionSelector: #infoFor:inViewer:;
		arguments: (Array with:aScriptOrSlotSymbol with: self);
		color: Color transparent;
		borderWidth: 0;
		shedSelvedge;
		actWhen: #buttonDown.
	aButton setBalloonText: 'Press here to get a menu' translated.
	^ aButton