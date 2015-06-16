categories
updateSearchButtonLabel
	| button |
	button := self
				findDeepSubmorphThat: [:e | e class = SimpleButtonMorph]
				ifAbsent: [].
	button label: 'Search' translated.
	button setBalloonText: 'Type some letters into the pane at right, and then press this Search button (or hit RETURN) and all method selectors that match what you typed will appear in the list below.' translated