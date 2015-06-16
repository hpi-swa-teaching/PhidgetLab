as yet unclassified
paneForTextColorPicker

	^self 
		inAColumn: {
			self 
				colorPickerFor: self
				getter: #targetTextColor
				setter: #changeTargetColorTo:.
			self lockedString: 'Text Color' translated.
		} 
		named: #pickerForTextColor.

