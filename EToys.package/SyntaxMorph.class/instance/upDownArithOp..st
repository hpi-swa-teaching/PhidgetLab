pop ups
upDownArithOp: delta
	"Change a + into a -.  Also do sounds (change the arg to the beep:)."

	| aList index st |
	st := submorphs detect: [:mm | mm isKindOf: StringMorph] ifNone: [^ self].
	(self nodeClassIs: SelectorNode) ifTrue:
		[aList := #(+ - * / // \\ min: max:).
		(index := aList indexOf: self decompile asString) > 0 ifTrue:
			[self setSelector: (aList atWrap: index + delta) in: st.  ^ true].

		aList := #(= ~= > >= isDivisibleBy: < <=).
		(index := aList indexOf: self decompile asString) > 0 ifTrue:
			[self setSelector: (aList atWrap: index + delta) in: st.  ^ true].

		aList := #(== ~~).
		(index := aList indexOf: self decompile asString) > 0 ifTrue:
			[self setSelector: (aList atWrap: index + delta) in: st.  ^ true].

		'beep:' = self decompile asString ifTrue:
			["replace sound arg"
			self changeSound: delta.
			self acceptSilently.  ^ true].
		].
	^ false