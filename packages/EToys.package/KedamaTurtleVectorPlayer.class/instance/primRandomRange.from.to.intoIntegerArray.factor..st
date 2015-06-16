primitives
primRandomRange: range from: from to: to intoIntegerArray: anIntegerArray factor: factor

	<primitive: 'randomIntoIntegerArray' module: 'KedamaPlugin'>

	from to: to do: [:index |
		anIntegerArray at: index put: ((kedamaWorld random: range) asFloat * factor) asInteger.
	].
