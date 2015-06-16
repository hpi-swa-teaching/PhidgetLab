parts bin
initializeToStandAlone
	"Enclose my prototype in a SyntaxMorph.  For the ObjectTool"

	| aWatcher aTile aLine aColor ms slotMsg |

	super initializeToStandAlone.
	aColor := Color r: 0.387 g: 0.581 b: 1.0.
	aTile := self typeColor: aColor.
	aWatcher := UpdatingStringMorph new.
	aWatcher growable: true;
		getSelector: nil;
		putSelector: nil;
		setToAllowTextEdit.
	aWatcher target: nil.
	aTile addMorphBack: aWatcher.
	aTile addArrows.
	aTile setLiteralTo: 5 width: 30.

	ms := MessageSend receiver: nil selector: #aNumber arguments: #().
	slotMsg := ms asTilesIn: Player globalNames: false.
		"For CardPlayers, use 'aPlayer'.  For others, name it, and use its name."
	ms := MessageSend receiver: 3 selector: #= arguments: #(5).
	aLine := ms asTilesIn: Player globalNames: false.
	aLine firstSubmorph delete.		"A little over-complicated?  Yes?"
	aLine addMorphFront: (slotMsg submorphs second) firstSubmorph.
	aLine addMorphFront: (Morph new transparentSpacerOfSize: 3@3).
	aLine lastSubmorph delete.
	aLine lastSubmorph delete.
	aLine color: aColor.
	aLine addMorphBack: (Morph new transparentSpacerOfSize: 3@3).
	aLine addMorphBack: aTile.
	aLine cellPositioning: #leftCenter.
	aWatcher step; fitContents.
	^ aLine markAsPartsDonor.