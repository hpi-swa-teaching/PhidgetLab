initialization
listDirection: aListDirection quadList: quadList
	"Initialize the receiver to run horizontally or vertically, obtaining its elements from the list of tuples of the form:
		(<receiver> <selector> <label> <balloonHelp>)
	Original Method in Parts bin - only 1 line changed."

	| aButton aClass |
	self layoutPolicy: TableLayout new.
	self listDirection: aListDirection.
	self wrapCentering: #center.
	self layoutInset: 2.
	self cellPositioning: #bottomCenter.

	aListDirection == #leftToRight
		ifTrue:
			[self vResizing: #rigid.
			self hResizing: #spaceFill.
			self wrapDirection: #topToBottom]
		ifFalse:
			[self hResizing: #rigid.
			self vResizing: #spaceFill.
			self wrapDirection: #leftToRight].
	quadList do:
		[:tuple |
			aClass := Smalltalk at: tuple first.
			aButton := PhdETIconicButton new initializeWithThumbnail: (self class thumbnailForQuad: tuple color: self color phidget: self phidget) withLabel: tuple third andColor: self color andSend: tuple second to: aClass with: self phidget.
			(tuple size > 3 and: [tuple fourth isEmptyOrNil not]) ifTrue:
				[aButton setBalloonText: tuple fourth].
 			self addMorphBack: aButton]