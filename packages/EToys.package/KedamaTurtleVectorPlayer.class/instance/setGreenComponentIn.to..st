player commands
setGreenComponentIn: aPatch to: value

	| xArray yArray patch component |
	xArray := arrays at: 2.
	yArray := arrays at: 3.
	patch := aPatch costume renderedMorph.
	value isCollection ifFalse: [
		component := (value asInteger bitAnd: 16rFF) bitShift: 8.
	].
	(1 to: self size) do: [:i | | pix |
		value isCollection ifTrue: [
			component := ((value at: i) asInteger bitAnd: 16rFF) bitShift: 8.
		].
		pix := patch pixelAtX: (xArray at: i) y: (yArray at: i).
		pix := (pix bitAnd: 16rFF00FF) bitOr: component.
		patch pixelAtX: (xArray at: i) y: (yArray at: i) put: pix.
	].
