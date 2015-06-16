player commands
heading: degrees

	| deg |
	deg := degrees isNumber ifTrue: [degrees asFloat] ifFalse: [degrees].
	self primSetHeading: (arrays at: 4) from: deg.
