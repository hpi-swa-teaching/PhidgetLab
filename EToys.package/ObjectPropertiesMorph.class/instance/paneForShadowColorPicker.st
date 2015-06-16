panes
paneForShadowColorPicker

	^self 
		inAColumn: {
			(self inAColumn: {
				self colorPickerFor: myTarget getter: #shadowColor setter: #shadowColor:.
				self paneForShadowOffset.
			}
			named: #pickerForShadowColor) layoutInset: 0.
			self paneForDropShadowToggle hResizing: #shrinkWrap.
		}

