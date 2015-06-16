tile protocol
defaultArgumentTileFor: aPlayer
	"Answer a tile to represent the type"
	| patch morph |
	patch := KedamaPatchTile new typeColor: self typeColor.
	morph := aPlayer costume renderedMorph.
	(morph isKindOf: KedamaMorph) ifTrue: [
		patch usePatch: aPlayer costume renderedMorph player getPatch.
	].
	(morph isKindOf: KedamaPatchMorph) ifTrue: [
		patch usePatch: morph player.
	].
	^ patch.
