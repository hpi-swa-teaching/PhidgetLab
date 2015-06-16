customevents-status control
addStatusChoices: choices toMenu: menu
	choices isEmpty ifFalse: [
		choices	 do: [ :choice || label sym |
			(choice isKindOf: Array) 
				ifTrue: [ label := choice first translated. sym := choice second ]
				ifFalse: [ label := choice translated. sym := choice ].
			menu add: label target: menu selector: #modalSelection: argument: sym ].
		menu addLine. ].
	^menu.
