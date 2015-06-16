initialize
rebuild

	self removeAllMorphs.
	self addARow: { (StringMorph contents:'') lock }.
	self addARow: {
		(StringMorph contents: 'Please enter your Squeak login name' font: self myFont) lock.
	}.
	(self addARow: {
		(theNameMorph := TextMorph new
			beAllFont: self myFont;
			crAction: (MessageSend receiver: self selector: #doOK);
			extent: 300@20;
			contentsWrapped: 'the old name';
			setBalloonText: 'Enter your name and avoid the following characters:

 : < > | / \ ? * "'

			).
	}) color: Color white; borderColor: Color black; borderWidth: 1.
	self addARow: {
		self okButton.
		self cancelButton.
	}.
	self addARow: { (StringMorph contents:'') lock }.
