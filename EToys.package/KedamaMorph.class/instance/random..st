utils
random: range
	"Answer a random integer between 0 and range."

	| r val |
	<primitive: 'randomRange' module: 'KedamaPlugin'>
	r := range < 0 ifTrue: [range negated] ifFalse: [range].
	RandomSeed := ((RandomSeed * 1309) + 13849) bitAnd: 65535.
	val := (RandomSeed * (r + 1)) >> 16.
	^ range < 0 ifTrue: [val negated] ifFalse: [^ val].

