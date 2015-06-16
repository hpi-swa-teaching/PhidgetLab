panes
paneForBorderColorPicker

	^self 
		inAColumn: {
			self 
				colorPickerFor: self
				getter: #targetBorderColor
				setter: #targetBorderColor:.
			self lockedString: 'Border Color' translated.
			(self paneForBorderStyle) hResizing: #shrinkWrap; layoutInset: 5.
			self lockedString: 'Border style' translated.
			self paneForBorderWidth.
		} 
		named: #pickerForBorderColor.

