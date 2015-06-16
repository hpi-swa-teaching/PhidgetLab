panes
paneForMainColorPicker

	^self 
		inAColumn: {
			self 
				colorPickerFor: self 
				getter: #numberOneColor 
				setter: #numberOneColor:.
			self lockedString: 'Color' translated.
			(self paneForSolidFillToggle)  hResizing: #shrinkWrap.
		} 
		named: #pickerForColor.

