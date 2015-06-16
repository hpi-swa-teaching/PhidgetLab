tests
toDo
"
Biggies...
[ ]	Integrate with EToy scriptors
	releaseCachedState can discard all morphic structure.

[ ]	Options:
	Show / hide syntax markers (like [], (), ., :, ;, etc)
	No color / color-in-focus / full color
	Tiles / textiles / text

[ ]	ParsedTextMorph -- looks like text but has all same substructure

[ ]	Introduce notion of an UnParsedNode -- maybe a flag in ParseNode
	Text -> UnParsed -> Parsed -> CodeGen

[ ]	Need DnD evaluator, or some sort of '!' button on any entity (halo?)
	Also inspector / browser

[ ]	All the type help we can get

Details ...
[ ]	Open up the parse of BraceNodes

[ ]	Verify that all pastes are OK

[ ]	Colors not yet right for colored version.

[ ]	Start work on show / hide of syntax markers -- (), [], etc.

[ ]	Start work on textiles (grabable entites in 'normal' text)

[ ]	Need autoscroll during drag for drop

[ ]	Use, eg, shift-drag to move, del to delete

[ ]	What about invalid drops -- stick on cursor?

System...
[ ]	Only keep history 7 deep; option to clear on quit
	clear command above spaceLeft

[ ]	Compute each page of prefs viewer on demand instead of as now.

[ ]	Offer a search command that will gather up all preferences that match a given string (name or help string)

Preferences enable: #noTileColor.
Preferences disable: #noTileColor.
Smalltalk browseAllSelect: [:cm | cm size > 600]
SyntaxMorph testAll
"