player commands
normal: degrees

	| deg |
	deg := degrees isNumber ifTrue: [degrees asFloat] ifFalse: [degrees].
	self primSetHeading: (arrays at: 7) from: deg.
