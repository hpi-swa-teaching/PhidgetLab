selection
select
	self deselect.
	"Outer block is not colored and has no popup"
	(owner isSyntaxMorph and: [owner nodeClassIs: MethodNode]) 
		ifTrue: [self setDeselectedColor "normal"]
		ifFalse: [self color: Color lightBrown].
	self borderColor: #raised.
	self offerPopUp.