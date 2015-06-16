accessing
selector
	"Find the selector I represent, or have inside of me.  My parseNode is a SelectorNode or a MessageNode."

	| sel cnt |
	parseNode class == SelectorNode 
		ifTrue: [^self decompile asString asSymbol].
	parseNode class == KeyWordNode ifTrue: [^self decompile asString asSymbol].
	parseNode class == MessageNode | (parseNode class == MessagePartNode) 
		ifFalse: [^nil].
	"Must be one of those to have a selector"
	"Beware of messageParts.  If MessagePartNode, only returns this one keyword."
	sel := ''.
	cnt := 0.
	submorphs do: 
			[:mm | 
			mm isSyntaxMorph 
				ifTrue: 
					[cnt := cnt + 1.
					(mm nodeClassIs: SelectorNode) ifTrue: [^mm selector].
					(mm nodeClassIs: MessagePartNode) ifTrue: [sel := sel , mm selector].
					(mm nodeClassIs: KeyWordNode) ifTrue: [sel := sel , mm decompile asString].
					(mm nodeClassIs: ReturnNode) ifTrue: [cnt := cnt - 1].
					(mm nodeClassIs: MessageNode) 
						ifTrue: 
							[parseNode receiver ifNil: [sel := mm selector].
							cnt = 2 & (sel isEmpty) 
								ifTrue: 
									["not the receiver.  Selector and arg"

									sel := mm selector]]]].
	sel ifNil: [^nil].
	sel notEmpty ifTrue: [^sel asSymbol].
	^nil