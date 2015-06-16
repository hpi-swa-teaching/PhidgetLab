menu
autoFitOnOff
	"Toggle between auto fit to size of code and manual resize with scrolling"
	| tw |
	(tw := self findA: TwoWayScrollPane) ifNil: [^ self].
	(self hasProperty: #autoFitContents)
		ifTrue: [self removeProperty: #autoFitContents.
			self hResizing: #rigid; vResizing: #rigid]
		ifFalse: [self setProperty: #autoFitContents toValue: true.
			self hResizing: #shrinkWrap; vResizing: #shrinkWrap].
	tw layoutChanged