scrolling
hScrollBarValue: scrollValue
	| bnd x |

	super hScrollBarValue: scrollValue.
	(header notNil and: [header scrolls not]) ifTrue: [
		bnd := header bounds right: self rawInnerBounds right.
		((x := self hLeftoverScrollRange * scrollValue) <= 0)
			ifTrue: [x := 0 - self hMargin].
		header offset: x negated; bounds: bnd.
		header changed.
	]