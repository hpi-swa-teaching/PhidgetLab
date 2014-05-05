private
createAndAddLabel

	label := StringMorph
		contents: 'Phidget Manager'
		font: nil
		emphasis: 1.		"bold"
	
	self addMorph: label.