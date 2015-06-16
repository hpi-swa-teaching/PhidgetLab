accessing
receiverObject
	"Return some object that could be the receiver to me (a selector).  Either the actual object who is the receiver in this message, or a guy of the right class."

	| rec value mm |
	(rec := owner) isSyntaxMorph ifFalse: [^ nil].
	rec := rec receiverNode.
	rec ifNil: [(rec := owner owner) isSyntaxMorph ifFalse: [^ nil].
				rec := rec receiverNode].	
	rec ifNil: [(rec := owner owner owner) isSyntaxMorph ifFalse: [^ nil].
				rec := rec receiverNode].
	rec isSelfTile ifTrue: [
		^ ((mm := self containingWindow model) respondsTo: #targetObject) 
			ifTrue: [mm targetObject]
			ifFalse: [mm selectedClassOrMetaClass new]].
	value := rec ifNotNil: [rec try].
	value class == Error ifTrue: [
		value := Vocabulary instanceWhoRespondsTo: self selector].
	^ value