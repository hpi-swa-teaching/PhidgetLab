mclm interface
setupHeaderOn: aMultiColumnListMorph
	| header |

	headerShown ifFalse: [aMultiColumnListMorph header: nil].
	header := MultiColumnListHeader on: (ssmColSpecs collect: [:a| a columnName]).
	headerLocked ifTrue: [header keepHeaderAtTop] ifFalse: [header scrollHeaderWithValues].
	aMultiColumnListMorph header: header