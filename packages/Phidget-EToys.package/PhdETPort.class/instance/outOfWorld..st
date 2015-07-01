accessing
outOfWorld: aWorld
	"Wenn der Port gedreht wurde => ein TransformationMorph darüber liegt, und dieser dann per Halo gelöscht wird, lösche auch plug und wire"
	self isFlexed ifTrue: [self delete].
	super outOfWorld: aWorld.
