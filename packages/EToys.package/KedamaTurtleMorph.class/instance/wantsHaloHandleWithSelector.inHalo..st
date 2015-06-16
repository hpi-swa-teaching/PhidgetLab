menus
wantsHaloHandleWithSelector: aSelector inHalo: aHaloMorph
	"Answer whether the receiver would like to offer the halo handle with the given selector (e.g. #addCollapseHandle:)"

	(#(addDupHandle: addMakeSiblingHandle:) includes: aSelector) ifTrue:
		[^ false].

	^ super wantsHaloHandleWithSelector: aSelector inHalo: aHaloMorph