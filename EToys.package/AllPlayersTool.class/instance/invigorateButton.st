reinvigoration
invigorateButton
	"Answer a button that triggers reinvigoration"

	| aButton |
	aButton := IconicButton new target: self;
		borderWidth: 0;
		labelGraphic: (ScriptingSystem formAtKey: #Refresh);
		color: Color transparent; 
		actWhen: #buttonUp;
		actionSelector: #reinvigorate;
		yourself.
	aButton setBalloonText: 'Click here to refresh the list of players'.
	^ aButton
