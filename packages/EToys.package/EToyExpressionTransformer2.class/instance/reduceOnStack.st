all
reduceOnStack

	| list left sel right m |
	list := stack removeLast: 3.
	left := list at: 1.
	sel := list at: 2.
	right := list at: 3.

	m :=	 MessageNode new
				receiver: left
				selector: sel
				arguments: (Array with: right)
				precedence: (sel precedence)
				from: encoder
				sourceRange: nil.
	stack addLast: m.
