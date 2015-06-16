as yet unclassified
rebuild

	| buttonColor c |

	self removeAllMorphs.
	self addAColumn: {
		self lockedString: ('Text Properties for {1}' translated format:{myTarget name}).
	}.
	self addAColumn: {
		self paneForApplyToWholeText.
	}.


	c := self addAColumn: {
		self activeTextMorph.
	}.
	c 
		wrapCentering: #topLeft;
		color: Color white;
		borderWidth: 2;
		borderColor: color darker.
	self addAColumn: {
		self paneForTextColorPicker.
	}.

	self addARow: {
		self paneForAutoFitToggle.
	}.
	self addARow: {
		self paneForWrappingToggle.
	}.
	self addARow: {
		self paneForMargins.
	}.

	buttonColor := color lighter.
	self addARow: {
		self inAColumn: {
			self addARow: {
				self 
					buttonNamed: 'Size' translated action: #offerFontMenu color: buttonColor
					help: 'font changing' translated.
				self 
					buttonNamed: 'Style' translated action: #changeStyle color: buttonColor
					help: 'font changing' translated.
				self 
					buttonNamed: 'N' translated action: #changeToNormalText color: buttonColor
					help: 'normal text' translated.
				self 
					buttonNamed: 'B' translated action: #toggleBold color: buttonColor
					help: 'bold text' translated.
				self 
					buttonNamed: 'I' translated action: #toggleItalic color: buttonColor
					help: 'italic text' translated.
				self 
					buttonNamed: 'n' translated action: #toggleNarrow color: buttonColor
					help: 'narrow text' translated.
				self 
					buttonNamed: 'U' translated action: #toggleUnderlined color: buttonColor
					help: 'underlined text' translated.
				self 
					buttonNamed: 'S' translated action: #toggleStruckOut color: buttonColor
					help: 'struck out text' translated.
				self 
					buttonNamed: 'Kern-' translated action: #kernMinus color: buttonColor
					help: 'decrease kern' translated.
				self 
					buttonNamed: 'Kern+' translated action: #kernPlus color: buttonColor
					help: 'increase kern' translated.
			}.
		}.
	}.
	self addARow: {
		self inAColumn: {
			self addARow: {
				self 
					buttonNamed: 'Left flush' translated action: #alignLeft color: buttonColor
					help: 'align text to left side' translated.
					
				self 
					buttonNamed: 'Center' translated action: #alignCenter color: buttonColor
					help: 'align text to center' translated.
				self 
					buttonNamed: 'Right Flush' translated action: #alignRight color: buttonColor
					help: 'align text to right side' translated.
				self 
					buttonNamed: 'Justified' translated action: #alignJustified color: buttonColor
					help: 'justify text alignmet' translated.
			}.
		}.
	}.
	self addARow: {
		self inAColumn: {
			self addARow: {
				self 
					buttonNamed: 'Accept' translated action: #doAccept color: buttonColor
					help: 'keep changes made and close panel' translated.
				self 
					buttonNamed: 'Cancel' translated action: #doCancel color: buttonColor
					help: 'cancel changes made and close panel' translated.
			}.
		}.
	}.
