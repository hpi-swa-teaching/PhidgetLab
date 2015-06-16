scripting
authoringPrototype
	"Enclose my prototype in a SyntaxMorph."

	| aWatcher aTile aLine aColor ms slotMsg |

	aColor := Color r: 0.387 g: 0.581 b: 1.0.
	aTile := self new typeColor: aColor.
	aWatcher := UpdatingStringMorph new.
	aWatcher growable: true;
		setToAllowTextEdit;
		getSelector: nil;
		putSelector: nil.
	aWatcher target: nil.
	aTile addMorphBack: aWatcher.
	aTile addArrows.
	aTile setLiteralTo: 5 width: 30.

	"This is the long way around to do this..."
	ms := MessageSend receiver: nil selector: #aNumber arguments: #().
	slotMsg := ms asTilesIn: Player globalNames: false.
		"For CardPlayers, use 'aPlayer'.  For others, name it, and use its name."
	ms := MessageSend receiver: 3 selector: #= arguments: #(5).
	aLine := ms asTilesIn: Player globalNames: false.
	aLine firstSubmorph delete.	
	aLine addMorphFront: (slotMsg submorphs second) firstSubmorph.
	aLine firstSubmorph setNameTo: 'label'.
	aLine addMorphFront: (Morph new transparentSpacerOfSize: 3@3).
	aLine lastSubmorph delete.
	aLine lastSubmorph delete.
	aLine color: aColor; setNameTo: 'Number (fancy)'.
	aLine addMorphBack: (Morph new transparentSpacerOfSize: 3@3).
	aLine addMorphBack: aTile.
	aLine readOut setNameTo: 'value'.
	aLine cellPositioning: #leftCenter.
	aWatcher step; fitContents.
	^ aLine markAsPartsDonor.