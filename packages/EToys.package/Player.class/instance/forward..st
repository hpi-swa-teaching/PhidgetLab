scripts-standard
forward: dist 
	"Move forward (viz. in the direction of my heading) by the given amount"

	| rho radians delta didStray p aCostume aPlayfield |
	(aCostume := self costume) isInWorld ifFalse: [^ self].
	aCostume isWorldOrHandMorph ifTrue: [^ self].
	aCostume owner isHandMorph ifTrue: [^ self].

	rho := (aCostume asNumber: dist) asFloat.
	radians := (self getHeadingUnrounded asFloat - 90.0) degreesToRadians.
	delta := (radians cos @ radians sin) * rho.

	(aPlayfield := aCostume pasteUpMorph) fenceEnabled ifTrue:
		[(aPlayfield bounds containsRect: aCostume bounds) ifFalse:
			["If I stray out of the bounds of my playfield, pull me back, but
			 without changing my heading as bounce would. Do nothing if
			 bounce has already corrected the direction."
			didStray := false.
			((aCostume left < aPlayfield left and: [delta x < 0]) or:
			 [aCostume right > aPlayfield right and: [delta x > 0]]) ifTrue:
				[delta := delta x negated @ delta y.
				didStray := true].
			((aCostume top < aPlayfield top and: [delta y < 0]) or:
			 [aCostume bottom > aPlayfield bottom and: [delta y > 0]]) ifTrue:
				[delta := delta x @ delta y negated.
				didStray := true].
			(didStray and: [Preferences fenceSoundEnabled]) ifTrue: [aCostume makeFenceSound]]].

	"use and record the fractional position"
	p := aCostume referencePosition + delta.
	aCostume referencePosition: p