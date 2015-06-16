class initialization
newSet

	| k p t s w |
	k := self new.
	p := k assuredPlayer getPatch costume renderedMorph.
	t := k assuredPlayer newTurtleForSet.

	s := SelectionMorph new.

	w := PasteUpMorph new.
	w extent: 400@400.
	p position: 275@50.
	t position: 300@175.
	k position: 25@25.
	w addMorph: k.
	w addMorph: t.
	w addMorph: p.
	w addMorph: s.
	s bounds: w bounds.
	s selectSubmorphsOf: w.
	^ s.
