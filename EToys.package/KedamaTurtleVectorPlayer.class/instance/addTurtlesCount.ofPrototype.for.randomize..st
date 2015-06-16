add turtles
addTurtlesCount: count ofPrototype: prototype for: aKedamaWorld randomize: randomizeFlag

	| oldCount |
	oldCount := self size.
	info associationsDo: [:assoc | | array defaultValue newArray index |
		index := info at: assoc key.
		array := arrays at: index.
		defaultValue := prototype at: index.
		newArray := array class new: count.
		newArray atAllPut: defaultValue.
		arrays at: index put: (array, newArray).
	].

	self setInitialValueOf: #who from: oldCount + 1 to: self size for: aKedamaWorld.

	randomizeFlag ifTrue: [
		#(x y heading) do: [:name |
			self setInitialValueOf: name from: oldCount + 1 to: self size for: aKedamaWorld.
		].
	].
	whoTableValid := false.
