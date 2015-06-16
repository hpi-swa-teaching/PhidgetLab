primitives
primMakeMaskOf: dataBits in: maskBits colorPixel: pixel shift: shift

	| highMask data alpha |
	<primitive: 'makeMask' module: 'KedamaPlugin'>
	"^ KedamaSqueakPlugin doPrimitive: #makeMask."

	highMask := 16rFF000000.
	1 to: dataBits size do: [:i |
		data := dataBits at: i.
		alpha := data bitShift: shift.
		(alpha > 255) ifTrue: [alpha := 255].
		maskBits at: i put: (((alpha << 24) bitAnd: highMask) bitOr: pixel).
	].

	^ self.
