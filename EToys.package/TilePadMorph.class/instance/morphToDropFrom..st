miscellaneous
morphToDropFrom: aMorph 
	"Given a morph being carried by the hand, which the hand is about to drop, answer the actual morph to be deposited.  Normally this would be just the morph itself, but several unusual cases arise, which this method is designed to service."

	| vwr |
	(aMorph isKindOf: WatcherWrapper)
		ifTrue: [^ aMorph getterTilesForDrop].
	^ ((self type capitalized = #Graphic)  "Special-case requested by Alan 4/30/05"
		and: [(aMorph isKindOf: TileMorph) and: [aMorph resultType = #Player]])
			ifFalse:
				[aMorph]
			ifTrue:
				[vwr := CategoryViewer new initializeFor: aMorph associatedPlayer categoryChoice: #basic.
				vwr getterTilesFor: #graphic asGetterSelector type: #Graphic]