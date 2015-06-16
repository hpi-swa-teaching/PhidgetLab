alans styles
specialColor: c1 andBorder: c2

	self color: (self scaleColorByUserPref: c1).
	self setProperty: #deselectedColor toValue: c1.
	self borderColor: (self scaleColorByUserPref: c2).
	self setProperty: #deselectedBorderColor toValue: c2.
