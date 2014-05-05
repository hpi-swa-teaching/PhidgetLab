multi-component
getListFor: phidget
	"Answers a LinkedList of instances of my class, with self componentCount elements, each initialized with its index in the list."

	| list size |
	list := LinkedList new.
	size := self componentCount: phidget.
	
	(1 to: size) do: [ :i |
		list add: (self newWith: phidget index: i) ].
	^ list