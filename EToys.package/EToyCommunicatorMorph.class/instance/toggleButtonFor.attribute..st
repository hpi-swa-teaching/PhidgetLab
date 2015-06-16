as yet unclassified
toggleButtonFor: entry attribute: attribute

	^(self inAColumn: {
		self
			simpleToggleButtonFor: entry 
			attribute: attribute 
			help: 'Whether you want "',attribute,'" messages'
	}) hResizing: #shrinkWrap
