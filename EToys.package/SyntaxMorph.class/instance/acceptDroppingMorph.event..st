layout
acceptDroppingMorph: aMorph event: evt
	| itNoun old |
	"Two cases: 1) a phrase being dropped into a block.  Add a new line.
		2) aMorph is replacing self by dropping on it.
	For the moment, you have to drop it the right place (the end of a tile if it is complex).  We do not look at enclosing morphs"

	itNoun := aMorph isNoun.
	self withAllOwnersDo:
		[:m | (m isSyntaxMorph and: [m isBlockNode])
				ifTrue: [m stopStepping; removeDropZones]].
	self isBlockNode & itNoun ifTrue:
		[(aMorph nodeClassIs: TempVariableNode) ifTrue:
				["If I am a BlockNode, and it is a TempVariableNode, add it into list"
				(self addBlockArg: aMorph)].
		"If I am a BlockNode and it is a noun add it as a new line"
		^ self addToBlock: aMorph event: evt].
				
	self isBlockNode ifTrue: [
		 (aMorph nodeClassIs: CommentNode) ifTrue: [^ self addToBlock: aMorph event: evt].
		 (aMorph nodeClassIs: ReturnNode) ifTrue: [^ self addToBlock: aMorph event: evt]].

	"Later add args and keywords.  later allow comments to be dropped"

	"Can't put statement, literal, assignment, or cascade into left side of assignment"
	(owner isSyntaxMorph) ifTrue:
		[(owner nodeClassIs: AssignmentNode) ifTrue:
			[(owner submorphIndexOf: self) = 1 ifTrue:
				[aMorph isAVariable ifFalse: [ ^ self]]]].

	(aMorph nodeClassIs: AssignmentNode) ifTrue: [
		itNoun ifFalse: ["create a new assignment"
			self isAVariable ifTrue: [^ self newAssignment]
					ifFalse: [^ self]]].	"only assign to a variable"

	aMorph deselect.
	(old := owner) replaceSubmorph: self by: aMorph.	"do the normal replacement"
	(old isSyntaxMorph) ifTrue: [old cleanupAfterItDroppedOnMe].	"now owned by no one"
