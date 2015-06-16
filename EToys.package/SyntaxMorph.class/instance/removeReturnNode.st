layout
removeReturnNode
	| blk |
	"If last line is ^ self, remove it.  I am a methodNode.  Keep if no other tiles in the block."

	blk := self findA: BlockNode.
	blk submorphs last decompile string = '^self ' ifTrue: [
		(blk submorphs count: [:ss | ss isSyntaxMorph]) > 1 ifTrue: [
			blk submorphs last delete]].