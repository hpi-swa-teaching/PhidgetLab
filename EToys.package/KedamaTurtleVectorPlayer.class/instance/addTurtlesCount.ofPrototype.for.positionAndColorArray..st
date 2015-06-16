add turtles
addTurtlesCount: count ofPrototype: prototype for: aKedamaWorld positionAndColorArray: positionAndColorArray

	| oldCount |
	oldCount := self size.
	info associationsDo: [:assoc | | defaultValue index newArray array |
		index := info at: assoc key.
		array := arrays at: (info at: assoc key).
		defaultValue := prototype at: index.
		newArray := array class new: count.
		(#(who x y heading color normal) includes: assoc key) ifFalse: [
			newArray atAllPut: defaultValue.
		].
		assoc key = #x ifTrue: [newArray replaceFrom: 1 to: newArray size with: positionAndColorArray first startingAt: 1].
		assoc key = #y ifTrue: [newArray replaceFrom: 1 to: newArray size with: positionAndColorArray second startingAt: 1].
		assoc key = #color ifTrue: [newArray replaceFrom: 1 to: newArray size with: positionAndColorArray third startingAt: 1].
		assoc key = #heading ifTrue: [newArray atAllPut: 1.57079631 "Float pi / 2.0"].
		assoc key = #normal ifTrue: [newArray atAllPut: 1.57079631 "Float pi / 2.0"].

		arrays at: (assoc value) put: array, newArray.
	].

	#(who) do: [:name |
		self setInitialValueOf: name from: oldCount + 1 to: self size for: aKedamaWorld.
	].
	whoTableValid := false.
	turtleMapValid := false.

	
