misc
discoverSlots: aMorph
	"Examine the parts of the morph for ones that couldHoldSeparateData.  Return a pair of lists: Named morphs, and unnamed morphs (which may be labels, and non-data).  Examine all submorphs."

	| named unnamed |
	named := OrderedCollection new.
	unnamed := OrderedCollection new.
	aMorph submorphsDo: [:direct | | got | 
		got := false.
		direct allMorphsDo: [:sub | | generic sn |
			sub couldHoldSeparateDataForEachInstance ifTrue: [
				(sn := sub knownName) ifNotNil: [
					generic := (#('Number (fancy)' 'Number (mid)' 'Number (bare)')
									includes: sn).
					(sn beginsWith: 'shared' "label") | generic ifFalse: [
						named add: sub.
						got := true]]]].
		got ifFalse: [unnamed add: direct]].
	^ Array with: named with: unnamed
		