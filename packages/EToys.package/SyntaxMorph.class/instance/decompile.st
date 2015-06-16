menus
decompile
	| stream |
	"Produce Smalltalk code.  We have a tree of SyntaxMorphs, but not a tree of ParseNodes.  The user has dragged in many SyntaxMorphs, each with its own parseNode, but those nodes are not sewn together in a tree.  The only data we get from a ParseNode is its class.
	We produce really ugly code.  But we compile it and decompile (prettyPrint) again for user to see."

	stream := ColoredCodeStream on: (Text new: 400).
	self printOn: stream indent: 1.	"Tree walk and produce text of the code"
	^ stream contents