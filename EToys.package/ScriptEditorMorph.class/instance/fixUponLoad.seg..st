objects from disk
fixUponLoad: aProject seg: anImageSegment
	"We are in an old project that is being loaded from disk.
Fix up conventions that have changed."

	(aProject projectParameters at: #substitutedFont ifAbsent: [#none])
		 ~~ #none ifTrue: [ self setProperty:
#needsLayoutFixed toValue: true ].

	^ super fixUponLoad: aProject seg: anImageSegment