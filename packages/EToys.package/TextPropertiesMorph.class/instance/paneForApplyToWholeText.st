as yet unclassified
paneForApplyToWholeText

	^self inARow: {
		self
			directToggleButtonFor: self 
			getter: #applyToWholeText
			setter: #toggleApplyToWholeText
			help: 'Whether to apply style changes to entire text or just selection' translated.
		self lockedString: ' Apply changes to entire text ' translated.
	}
