menus
offerTilesMenuFor: aReceiver in: aLexiconModel
	"Offer a menu of tiles for assignment and constants"

	| menu |
	menu := MenuMorph new addTitle: 'Hand me a tile for...'.
	menu addLine.
	menu add: '(accept method now)' target: aLexiconModel selector: #acceptTiles.
	menu submorphs last color: Color red darker.
	menu addLine.

	menu add: 'me, by name' target: self  selector: #attachTileForCode:nodeType: 
				argumentList: {'<me by name>'. aReceiver}.
	menu add: 'self' target: self  selector: #attachTileForCode:nodeType: 
				argumentList: {'self'. VariableNode}.
	menu add: '_   (assignment)' target: self  selector: #attachTileForCode:nodeType: 
				argumentList: {'<assignment>'. nil}.
	menu add: '"a Comment"' target: self  selector: #attachTileForCode:nodeType: 
				argumentList: {'"a comment"\' withCRs. CommentNode}.
	menu submorphs last color: Color blue.
	menu add: 'a Number' target: self  selector: #attachTileForCode:nodeType: 
				argumentList: {'5'. LiteralNode}.
	menu add: 'a Character' target: self  selector: #attachTileForCode:nodeType: 
				argumentList: {'$z'. LiteralNode}.
	menu add: '''abc''' target: self selector: #attachTileForCode:nodeType: 
				argumentList: {'''abc'''. LiteralNode}.
	menu add: 'a Symbol constant' target: self selector: #attachTileForCode:nodeType: 
				argumentList: {'#next'. LiteralNode}.
	menu add: 'true' target: self selector: #attachTileForCode:nodeType: 
				argumentList: {'true'. VariableNode}.
	menu add: 'a Test' target: self  selector: #attachTileForCode:nodeType: 
				argumentList: {'true ifTrue: [self] ifFalse: [self]'. MessageNode}.
	menu add: 'a Loop' target: self selector: #attachTileForCode:nodeType: 
				argumentList: {'1 to: 10 do: [:index | self]'. MessageNode}.
	menu add: 'a Block' target: self selector: #attachTileForCode:nodeType: 
				argumentList: {'[self]'. BlockNode}.
	menu add: 'a Class or Global' target: self selector: #attachTileForCode:nodeType: 
				argumentList: {'Character'. LiteralVariableNode}.
	menu add: 'a Reply' target: self selector: #attachTileForCode:nodeType: 
				argumentList: {'| temp | temp'. ReturnNode}.
	menu popUpAt: ActiveHand position forHand: ActiveHand in: World.
