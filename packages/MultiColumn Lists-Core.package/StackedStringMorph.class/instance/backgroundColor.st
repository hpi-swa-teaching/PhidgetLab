accessing
backgroundColor
	self isSelected
		ifFalse: [^backgroundColor]
		ifTrue: [^Color blue muchLighter]