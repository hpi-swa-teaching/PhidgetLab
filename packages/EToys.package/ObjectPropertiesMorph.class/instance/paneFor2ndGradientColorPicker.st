panes
paneFor2ndGradientColorPicker

	^self 
		inAColumn: {
			(self inAColumn: {
				self colorPickerFor: self getter: #tgt2ndGradientColor setter: #tgt2ndGradientColor:.
				self lockedString: '2nd gradient color' translated.
				self paneForRadialGradientToggle hResizing: #shrinkWrap.
				(
					self inARow: {self paneForGradientOrigin. self paneForGradientDirection}
				) hResizing: #shrinkWrap.
			}
			named: #pickerFor2ndGradientColor) layoutInset: 0.
			self paneForGradientFillToggle hResizing: #shrinkWrap 
		}
