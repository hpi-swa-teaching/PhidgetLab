node to morph
addTemporaryControls

	| row stdSize |
	
	stdSize := 8@8.
	row := AlignmentMorph newRow
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	self addMorphBack: row.

	{
		Morph new
			extent: stdSize; 
			color: Color paleBlue darker;
			setBalloonText: 'Change the contrast';
			on: #mouseUp send: #controlContrast2: to: self;
			on: #mouseMove send: #controlContrast2: to: self;
			on: #mouseDown send: #controlContrast2: to: self.

	"Removed because it's default is giant tiles, which no one wants. --tk
		Morph new
			extent: stdSize; 
			color: Color green;
			setBalloonText: 'Change basic spacing';
			on: #mouseUp send: #controlSpacing2: to: self;
			on: #mouseMove send: #controlSpacing2: to: self;
			on: #mouseDown send: #controlSpacing2: to: self.
	"

		Morph new
			extent: stdSize; 
			color: Color lightRed;
			setBalloonText: 'Change basic style';
			on: #mouseUp send: #changeBasicStyle to: self.

	} do: [ :each |
		row addMorphBack: each.
		row addMorphBack: (self transparentSpacerOfSize: stdSize).
	].
