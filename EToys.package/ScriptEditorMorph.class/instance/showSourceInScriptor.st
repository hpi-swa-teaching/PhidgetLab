buttons
showSourceInScriptor
	"Remove tile panes, if any, and show textual source instead"

	| aCodePane |

	self isTextuallyCoded ifFalse: [self becomeTextuallyCoded].
		"Mostly to fix up grandfathered ScriptEditors"

	self removeAllButFirstSubmorph.

	aCodePane := MethodHolder 
		isolatedCodePaneForClass: playerScripted class 
		selector: scriptName.

	aCodePane
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		minHeight: 100.
	self 
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	self addMorphBack: aCodePane.
	self fullBounds.
	self 
		listDirection: #topToBottom;
		hResizing: #rigid;
		vResizing: #rigid;
		rubberBandCells: true;
		minWidth: self width.

	showingMethodPane := true.
	self currentWorld startSteppingSubmorphsOf: self