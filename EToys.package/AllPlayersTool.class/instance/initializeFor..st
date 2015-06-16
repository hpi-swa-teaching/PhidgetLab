initialization
initializeFor: aPresenter
	"Initialize the receiver as a tool which shows, and allows the user to change the status of, all the instantiations of all the user-written scripts in the scope of the containing pasteup's presenter"

	| placeHolder |
	self color: Color brown muchLighter muchLighter; wrapCentering: #center; cellPositioning: #topCenter; vResizing: #shrinkWrap; hResizing: #shrinkWrap.
	self useRoundedCorners.
	self borderStyle: BorderStyle complexAltInset; borderWidth: 4; borderColor: (Color r: 0.452 g: 0.839 b: 1.0).  "Color fromUser"
	self addHeaderRow.
	placeHolder := Morph new beTransparent.
	placeHolder extent: 200@1.
	self addMorphBack: placeHolder.
	ActiveWorld presenter reinvigoratePlayersTool: self 

