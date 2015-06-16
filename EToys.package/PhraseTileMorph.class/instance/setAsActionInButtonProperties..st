customevents-scripting
setAsActionInButtonProperties: buttonProperties

	userScriptSelector ifNil: [
		buttonProperties
			target: self associatedPlayer;
			actionSelector: #evaluateUnloggedForSelf:;
			arguments: {self codeString}.
		^true
	].
	buttonProperties
		target: self objectViewed player;
		actionSelector: #triggerScript: ;
		arguments: {userScriptSelector}.
	^true

"==== or 

	buttonProperties
		target: (self morphToDropInPasteUp: nil);
		actionSelector: #tryMe;
		arguments: #().
	^true


	==="