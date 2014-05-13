menu
mclForkedShowHide
	| show columns |

	columns := header isNil ifFalse: [header strings] ifTrue: [Array streamContents: [:array| 1 to: list first size do: [:x| array nextPut: ('Column ', x asString)]]].
	show := MCLColumnHideShowWindow selectShownColumnsFrom: columns currentlyShowing: showScreen.
	show ifNil: [^self].
	showScreen := show collect: [:col| columns indexOf: col].
	header showScreen = showScreen ifTrue: [^self].
	self list: origObjects
