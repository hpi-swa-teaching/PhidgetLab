reinvigoration
menuButton
	"Answer a button that brings up a menu.  Useful when adding new features, but at present is between uses"

	| aButton |
	aButton := IconicButton new target: self;
		borderWidth: 0;
		labelGraphic: (ScriptingSystem formAtKey: #TinyMenu);
		color: Color transparent; 
		actWhen: #buttonDown;
		actionSelector: #offerMenu;
		yourself.
	aButton setBalloonText: 'click here to get a menu with further options'.
	^ aButton
