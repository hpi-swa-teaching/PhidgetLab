as yet unclassified
ellipticalButtonWithText: aStringOrText

	| m prop |

	m := EllipseMorph new.
	prop := m ensuredButtonProperties.
	prop
		target: #(1 2 3);
		actionSelector: #inspect;
		actWhen: #mouseUp;
		addTextToButton: aStringOrText;
		wantsRolloverIndicator: true.
	^m