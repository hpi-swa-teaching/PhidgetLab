as yet unclassified
stopFlashing

	self setProperty: #flashingState toValue: 0.
	self borderColor: (self valueOfProperty: #normalBorderColor ifAbsent: [Color blue]).
