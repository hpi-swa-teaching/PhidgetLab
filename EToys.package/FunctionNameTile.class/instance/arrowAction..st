arrows
arrowAction: delta 
	"Do what is appropriate when an arrow on the tile is pressed; delta will be +1 or -1"

	| index operatorList |
	operatorList := self options second.
	index := (operatorList indexOf: self value) + delta.
	self setOperator: (operatorList atWrap: index).
	self scriptEdited.
	self layoutChanged