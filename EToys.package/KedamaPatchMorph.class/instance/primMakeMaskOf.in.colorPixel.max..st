primitives
primMakeMaskOf: dataBits in: maskBits colorPixel: pixel max: max

	| highMask alpha maxLog data |
	<primitive: 'makeMaskLog' module: 'KedamaPlugin'>
	"^ KedamaSqueakPlugin doPrimitive: #makeMaskLog."


	highMask := 16rFF000000.
	"maxLog := self cCode: 'log(max)' inSmalltalk: [max first ln]."
	maxLog := max first ln.
	maxLog := 255.0 / maxLog.

	1 to: dataBits size do: [:i |
		data := dataBits at: i.
		data = 0 ifTrue: [alpha := 0] ifFalse: [
			"alpha := ((255.0 / maxLog) * (self cCode: 'log(data)' inSmalltalk: [data ln])) asInteger."
			alpha := (maxLog * (data ln)) asInteger.

		].
		(alpha > 255) ifTrue: [alpha := 255].
		maskBits at: i put: (((alpha << 24) bitAnd: highMask) bitOr: pixel).
	].
	^ self.
