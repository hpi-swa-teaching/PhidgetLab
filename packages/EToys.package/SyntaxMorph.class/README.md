A single class of morph that holds any piece of Smalltalk syntax, and allows it to be a tile.  Tiles can be dragged in or out of a method. 

In the message list pane of a Browser, choose 'tile scriptor'.  Bring up a second one to steal parts from.  If you use a Protocol Browser, and choose tiles, there will be two buttons that bring up menus with many tiles on them.

Clicking multiple times selects enclosing phrases of code.  Dragging lets you take away a copy.  Any tile may be replaced by dropping on it.  Shift-click to edit the text of any tile.  Change variable and message names, but do not change the part-of-speech (objects to selector).

Each SyntaxMorph holds a ParseNode.  After editing, the parseNode is only good as a part-of-speech indicator.  Only the Class of a parseNode is important.  It's state is not kept up to date with the tile edits (but maybe it should be).  (For MessageNodes, whether the receiver slot is nil is significant.)

The correspondence between SyntaxMorphs and parseNodes in the real parse tree is not one-to-one.  Several extra levels of SyntaxMorph were added as aligners to make the horizontal and vertical layout right.  These sometimes have nil for the parseNode.

When accept the method, we pass over the tree of SyntaxMorphs, gathering their printStrings and inserting punctuation.  See (SyntaxMorph>>printOn:indent:).  We send the result to the compiler.  (We do not use the parse tree we already have.)

To turn on type checking: 
Preferences enable: #eToyFriendly
or for testing:     World project projectParameters at: #fullCheck put: true.

Colors of tiles:  Each tile has a current color (inst car color) and a deselectedColor (a property).  The deselectedColor may be governed by the part of speech, or not.  (translateColor: is only used when a tile is created, to set deselectedColor.)  From deselectedColor (set by #setDeselectedColor), the color changes to:
	lightBrown when selected (not the submorphs) in #select
	translucent when held in the hand (allMorphs) in #lookTranslucent
	green when a drop target (allMorphs) (change the owners back) #dropColor, 
		#trackDropZones 
deselectedColor is moderated by the darkness setting, #scaleColorByUserPref:.  (as it is put into color in #color:)

Code to produce an individual tile is: 
	(SyntaxMorph new) attachTileForCode: '''abc''' nodeType: LiteralNode.
see offerTilesMenuFor:in: for many other phrases that produce useful tiles.

AssignmentNode:  If three submorphs, is a statement, and is a noun.  If one submorph, is just the left arrow.  When dropped on a variable, it creates a new assignment statement. 