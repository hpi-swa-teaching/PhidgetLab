tile protocol
defaultArgumentTile
	"Answer a tile to represent the type"
	| patch ks k p |
	patch := KedamaPatchTile new typeColor: self typeColor.
	ks := ActiveWorld allMorphs select: [:e | e isKindOf: KedamaMorph].
	ks isEmpty ifFalse: [
		k := ks first.
		p := k player getPatch.
	] ifTrue: [
		k := KedamaPatchMorph new.
		k assuredPlayer.
		p := k player.
	].
	patch usePatch: p.
	^ patch.
