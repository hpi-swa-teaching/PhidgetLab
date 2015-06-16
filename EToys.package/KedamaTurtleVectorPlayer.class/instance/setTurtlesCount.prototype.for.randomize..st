add turtles
setTurtlesCount: count prototype: prototype for: aKedamaWorld randomize: rondomizeFlag

	| anInteger |
	anInteger := count.
	count < 0 ifTrue: [anInteger := 0].

	self size > anInteger ifTrue: [
		info associationsDo: [:assoc | | array |
			array := (arrays at: assoc value).
			array := array copyFrom: 1 to: anInteger.
			arrays at: assoc value put: array.
		].
		turtleMapValid := false.
		whoTableValid := false.
	].

	self size < anInteger ifTrue: [
		self addTurtlesCount: (anInteger - self size) ofPrototype: prototype for: aKedamaWorld randomize: rondomizeFlag.
		turtleMapValid := false.
		whoTableValid := false.

	].


