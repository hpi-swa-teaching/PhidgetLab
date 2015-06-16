customevents-status control
addStatusChoices: choices toSubMenu: submenu forMenu: menu
	choices isEmpty ifFalse: [
		choices	 do: [ :choice || label sym |
			(choice isKindOf: Array) 
				ifTrue: [ label := choice first translated. sym := choice second ]
				ifFalse: [ label := choice translated. sym := choice ].
			submenu add: label target: menu selector: #modalSelection: argument: sym ].
		menu addLine. ].
	^menu.
