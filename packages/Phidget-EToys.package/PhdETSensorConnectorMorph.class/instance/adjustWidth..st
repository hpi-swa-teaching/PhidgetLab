scaling
adjustWidth: width

	| adjustmentValue |
	self width: width.
	adjustmentValue := (self width - overlay width)/2 @ 0.
	overlay position: overlay position + adjustmentValue.
	self pin position: self pin position + adjustmentValue.