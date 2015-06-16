slots-user
allPossibleWatchersFromWorld
	"Answer a list of all UpdatingStringMorphs, PlayerReferenceReadouts, ThumbnailMorphs, and  UpdatingReferenceMorphs in the Active world and its hidden book pages, etc., which have me or any of my siblings as targets"

	| a |
	a := IdentitySet new: 400.
	ActiveWorld allMorphsAndBookPagesInto: a.
	^ a select: [:e | e isEtoyReadout and: [e target class == self class]]