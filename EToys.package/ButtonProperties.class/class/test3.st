as yet unclassified
test3

	| m |

	(m := self ellipticalButtonWithText: 'Hello world') openInWorld.
	m ensuredButtonProperties
		target: Beeper;
		actionSelector: #beep;
		delayBetweenFirings: 1000.