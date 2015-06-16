misc
statusControlRowIn: aStatusViewer
	"Answer an object that reports my status and lets the user change it"

	| aRow aMorph buttonWithPlayerName |
	aRow := ScriptStatusLine newRow beTransparent.
	buttonWithPlayerName := UpdatingSimpleButtonMorph new.
	buttonWithPlayerName
		on: #mouseEnter send: #menuButtonMouseEnter: to: buttonWithPlayerName;
		 on: #mouseLeave send: #menuButtonMouseLeave: to: buttonWithPlayerName.

	buttonWithPlayerName target: self; wordingSelector: #playersExternalName; actionSelector: #offerMenuIn:; arguments: {aStatusViewer}; beTransparent; actWhen: #buttonDown.
	buttonWithPlayerName setBalloonText: 'This is the name of the player to which this script belongs; if you click here, you will get a menu of interesting options pertaining to this player and script' translated.
	buttonWithPlayerName borderWidth: 1; borderColor: Color blue.
	aRow addMorphBack: buttonWithPlayerName.
	aRow addTransparentSpacerOfSize: 10@0.
	aRow addMorphBack: AlignmentMorph newVariableTransparentSpacer.

	aMorph := UpdatingStringMorph on: self selector: #selector.
	aMorph color: Color brown lighter; useStringFormat.
	aMorph setBalloonText: 'This is the name of the script to which this entry pertains.' translated.
	aRow addMorphBack: aMorph.
	aRow addMorphBack: AlignmentMorph newVariableTransparentSpacer.
	aRow addTransparentSpacerOfSize: 10@0.

	aRow addMorphBack: self statusControlMorph.
	aRow submorphsDo: [:m | m wantsSteps ifTrue: [m step]].
	^ aRow