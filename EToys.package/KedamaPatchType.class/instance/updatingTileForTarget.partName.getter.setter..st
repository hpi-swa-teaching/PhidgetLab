tile protocol
updatingTileForTarget: aTarget partName: partName getter: getter setter: setter

	| aTile displayer actualSetter |
	actualSetter := setter ifNotNil:
		[(#(none nil unused) includes: setter) ifTrue: [nil] ifFalse: [setter]].

	aTile := self newReadoutTile.

	displayer := UpdatingStringMorph new
		getSelector: #externalName;
		target: (aTarget perform: getter) costume renderedMorph;
		growable: true;
		minimumWidth: 24;
		putSelector: nil.
	displayer stepTime: 1000.
	"Note that when typeSymbol = #number, the #target: call above will have dealt with floatPrecision details"

	self setFormatForDisplayer: displayer.
	aTile addMorphBack: displayer.
	(actualSetter notNil and: [self wantsArrowsOnTiles]) ifTrue: [aTile addArrows].	
	getter numArgs = 0 ifTrue:
		[aTile setLiteralInitially: (aTarget perform: getter)].
	displayer useStringFormat.

	^ aTile
