player commands
setHeading: degrees

	^ self primSetHeadingAt: self index headingArray: (turtles arrays at: 4) value: degrees asFloat.
