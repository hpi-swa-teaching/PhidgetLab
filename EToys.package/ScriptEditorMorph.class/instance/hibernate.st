other
hibernate
	"Possibly delete the tiles, but only if using universal tiles."

	| tw |
	Preferences universalTiles ifFalse: [^self].
	(tw := self findA: TwoWayScrollPane) isNil 
		ifFalse: 
			[self setProperty: #sizeAtHibernate toValue: self extent.	"+ tw xScrollerHeight"
			submorphs size > 1 ifTrue: [tw delete]]