pop ups
newAssignment
	"I am a variableNode.  Place me inside an assignment statement."

	| new old |
	parseNode name: self decompile.	"in case user changed name"
	new := owner assignmentNode: AssignmentNode new variable: parseNode 
					value: parseNode copy.
	self deselect.
	(old := owner) replaceSubmorph: self by: new.	"do the normal replacement"
	(old isSyntaxMorph) ifTrue: [old cleanupAfterItDroppedOnMe].	"now owned by no one"
