layout
try
	"Evaluate me once"

	(#(MessageNode LiteralNode VariableNode) includes: parseNode class name) 
		ifFalse: [^ Error new].
	^ [Compiler evaluate: self decompile
				for: self actualObject.	"should do something to the player"
		] ifError: [ :a :b | Error new].