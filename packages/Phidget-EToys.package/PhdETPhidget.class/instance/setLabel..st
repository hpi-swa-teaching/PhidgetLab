accessing
setLabel: anObject
	"Set my label (and Etoys name) and repositions my labelMorph so that it is still centered. I also update my Etoys name here."

	labelMorph contents: anObject asString.
	(self player) ifNotNil: [
		self player setName: labelMorph contents ].
	self positionLabel.
