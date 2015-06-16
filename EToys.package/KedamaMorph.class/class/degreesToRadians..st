global primitive backup
degreesToRadians: degrees

	| deg q headingRadians |
	deg := 90.0 - degrees.
	q := (deg / 360.0) asInteger.
	deg < 0.0 ifTrue: [q := q - 1].
	headingRadians := (deg - (q * 360.0)) * 0.0174532925199433.
	^ headingRadians.
