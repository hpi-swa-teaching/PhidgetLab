search
doSearchFrom:  aSource interactive: isInteractive
	"Perform the search operation.  If interactive is true, this actually happened because a search button was pressed; if false, it was triggered some other way for which an informer would be inappropriate."

	| searchFor |
	searchString := (aSource isKindOf: PluggableTextMorph)
		ifFalse:
			[aSource]
		ifTrue:
			[aSource text string].
	searchFor := searchString asNumber asInteger.
	(self outerViewer isMemberOf: KedamaStandardViewer) ifTrue: [
		self outerViewer providePossibleRestrictedView: searchFor.
		self updateWhoString.
	].
