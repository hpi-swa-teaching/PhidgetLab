menus
showMenu: evt
	| menu |
	menu := MenuMorph new.
	self rootTile isMethodNode ifTrue:
		[menu add: 'accept method' target: self selector: #accept.
		menu addLine.

		menu add: 'new temp variable' target: self selector: #attachTileForCode:nodeType: 
					argumentList: {'| temp | temp'. TempVariableNode}.
		menu addLine.

		self parsedInClass allInstVarNames do: [:nn |
			menu add: nn,' tile' target: self selector: #instVarTile: argument: nn].
		menu addLine.

		menu add: 'show code' target: self selector: #showCode.
		menu add: 'try out' target: self selector: #try.
		menu popUpAt: evt hand position forHand: evt hand in: World].



