arrows
arrowAction: delta 
	"Do what is appropriate when an arrow on the tile is pressed; delta will  
	be +1 or -1"
	| index options |
	(type == #literal
			and: [literal isNumber])
		ifTrue: [self value: literal + delta]
		ifFalse: [options := self options
						ifNil: [^ self].
			index := (options first indexOf: self value)
						+ delta.
			self
				value: (options first atWrap: index).
			submorphs last
				setBalloonText: (options second atWrap: index)]