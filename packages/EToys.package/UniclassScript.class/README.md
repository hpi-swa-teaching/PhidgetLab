Represents a tile script of uniclass.  Holds the ScriptEditorMorph structures for the current version of a user-defined tile script, as well as previous versions thereof.

In addition to the instance variables of my superclass, my instance variables are:

currentScriptEditor		The current version of the ScriptEditorMorph for the script
formerScriptingTiles		A collection of pairs, (<timeStamp>  (list of morphs)) 
							each pair characterizing a prior tile version
isTextuallyCoded			A boolean.  If true, then a hand-crafted user coding supersedes
							the tale of the tiles.  This architecture is in transition, perhaps.