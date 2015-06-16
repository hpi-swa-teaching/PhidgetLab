initialization
initialize
	"initialize the state of the receiver"
	super initialize.
	""
	self extent: 1 @ 1.
	self
		typeColor: (Color
				r: 0.8
				g: 1.0
				b: 0.6).

	type := #literal.
	"#literal, #slotRef, #objRef, #operator, #expression"
	slotName := ''.
	literal := 1.
	self layoutPolicy: TableLayout new.
	self cellInset: 2 @ 0.
	self layoutInset: 1 @ 0.
	self listDirection: #leftToRight.
	self wrapCentering: #center.
	self hResizing: #shrinkWrap.
	self vResizing: #spaceFill