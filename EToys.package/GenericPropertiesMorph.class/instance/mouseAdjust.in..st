as yet unclassified
mouseAdjust: evt in: aMorph

	| fractionalPosition feedBack testExtent |

	feedBack := self showSliderFeedback: nil.
	feedBack world ifNil: [
		feedBack bottomLeft: evt cursorPoint - (0@8)
	].
	testExtent := 100@100.		"the real extent may change"
	fractionalPosition := (evt cursorPoint - aMorph topLeft) / testExtent.
	self 
		perform: (aMorph valueOfProperty: #changeSelector)
		with: fractionalPosition
