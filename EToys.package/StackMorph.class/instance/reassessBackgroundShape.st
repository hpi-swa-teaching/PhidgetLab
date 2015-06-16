card in a stack
reassessBackgroundShape
	"Have the current page reconsider its cards' instance structure"

	currentPage setProperty: #myStack toValue: self. 	"pointer cardMorph -> stack"
	^ self currentPage reassessBackgroundShape 
