*Etoys-tiles
updatingTileForTarget: aTarget partName: partName getter: getter setter: setter
	"Answer, for classic tiles, an updating readout tile for a part with the receiver's type, with the given getter and setter"

	| readout |
	readout := UpdatingRectangleMorph new.
	readout
		getSelector: getter;
		target: aTarget;
		borderWidth: 1;
		extent:  22@22.
	((aTarget isKindOf: KedamaExamplerPlayer) and: [getter = #getColor]) ifTrue: [
		readout getSelector: #getColorOpaque.
	].
	(setter isNil or: [#(unused none #nil) includes: setter]) ifFalse:
		[readout putSelector: setter].
	^ readout
