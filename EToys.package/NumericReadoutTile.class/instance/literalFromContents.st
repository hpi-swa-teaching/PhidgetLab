accessing
literalFromContents
	| label |
	label := self labelMorph
				ifNil: [^ super literal].
	label step.
	^ literal := label valueFromContents