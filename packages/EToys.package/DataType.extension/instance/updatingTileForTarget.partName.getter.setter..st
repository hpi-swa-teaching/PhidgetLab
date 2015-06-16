*Etoys-tiles
updatingTileForTarget: aTarget partName: partName getter: getter setter: setter
	"Answer, for classic tiles, an updating readout tile for a part with the receiver's type, with the given getter and setter"

	| aTile displayer actualSetter |
	actualSetter := setter ifNotNil:
		[(#(none #nil unused) includes: setter) ifTrue: [nil] ifFalse: [setter]].

	aTile := self newReadoutTile.

	displayer := UpdatingStringMorph new
		getSelector: getter;
		target: aTarget;
		growable: true;
		minimumWidth: 24;
		putSelector: actualSetter.
	"Note that when typeSymbol = #number, the #target: call above will have dealt with floatPrecision details"

	self setFormatForDisplayer: displayer.
	aTile addMorphBack: displayer.
	(actualSetter notNil and: [self wantsArrowsOnTiles]) ifTrue: [aTile addArrows].	
	getter numArgs = 0 ifTrue:
		[aTile setLiteralInitially: (aTarget perform: getter)].
	^ aTile
