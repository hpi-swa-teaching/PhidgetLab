all
precl

	stack size = 0 ifTrue: [^ 0].
	stack size = 1 ifTrue: [^ self precl: stack last].
	stack last isSymbol ifTrue: [^ 0].
	^ self precl: (stack at: stack size - 1).
