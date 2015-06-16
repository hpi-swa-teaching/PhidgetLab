accessing
abandonLabelFocus
	"If the receiver's label has editing focus, abandon it"
	self flag: #arNote. "Probably unnecessary"
	self currentHand releaseKeyboardFocus: self labelMorph.