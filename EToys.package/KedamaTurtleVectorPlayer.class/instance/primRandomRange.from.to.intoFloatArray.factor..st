primitives
primRandomRange: range from: from to: to intoFloatArray: aFloatArray factor: factor

	<primitive: 'randomIntoFloatArray' module: 'KedamaPlugin'>

	from to: to do: [:index |
		aFloatArray at: index put: (kedamaWorld random: range) asFloat * factor.
	].
