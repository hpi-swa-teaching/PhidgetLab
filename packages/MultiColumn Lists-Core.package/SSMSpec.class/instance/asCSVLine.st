accessing
asCSVLine
	^(ssmColSpecs collect: [:a| a columnName]) asCSVLine 