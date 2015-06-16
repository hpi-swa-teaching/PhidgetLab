costume
tearOffButtonToFireScriptForSelector: aSelector
	"Tear off a button to fire the script for the given selector"

	| aButton props |
	Preferences useButtonProprtiesToFire ifFalse:
		[aButton := ScriptActivationButton new.
		aButton initializeForPlayer: self uniclassScript:  (self class scripts at: aSelector).
		^ aButton openInHand].

	(aButton := RectangleMorph new) useRoundedCorners; color: Color yellow.
	props := aButton ensuredButtonProperties.
	props
		target: self;
		actionSelector: #runScript:;
		arguments: {aSelector};
		delayBetweenFirings: 80;
		actWhen: #mouseUp;
		mouseDownHaloWidth: 8;
		wantsRolloverIndicator: true;
		mouseOverHaloWidth: 5;
		establishEtoyLabelWording.
	aButton width: aButton submorphs first width + 20; height: 20.
	self currentHand attachMorph: aButton.
