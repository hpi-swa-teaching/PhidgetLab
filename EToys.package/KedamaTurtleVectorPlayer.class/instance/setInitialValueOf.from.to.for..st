player commands
setInitialValueOf: name from: from to: to for: aKedamaWorld

	| array max |
	array := arrays at: (info at: name).
	name = #who ifTrue: [
		from to: to do: [:index |
			array at: index put: (aKedamaWorld nextTurtleID).
		].
		^ self.
	].
	name = #x ifTrue: [
		max := aKedamaWorld dimensions x * 100.
		self primRandomRange: max from: from to: to intoFloatArray: array factor: 0.01.
		^ self.
	].
	name = #y ifTrue: [
		max := aKedamaWorld dimensions y * 100.
		self primRandomRange: max from: from to: to intoFloatArray: array factor: 0.01.
		^ self.
	].
	name = #heading ifTrue: [
		self primRandomRange: 36000 from: from to: to intoFloatArray: array factor: (0.01 *  0.0174532925199433).
		^ self.
	].
