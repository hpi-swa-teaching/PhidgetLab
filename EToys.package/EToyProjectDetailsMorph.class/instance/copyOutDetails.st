as yet unclassified
copyOutDetails

	| newDetails |

	newDetails := Dictionary new.
	self fieldToDetailsMappings do: [ :each |
		namedFields at: each first ifPresent: [ :field |
			newDetails at: each second put: field contents string
		].
	].
	namedFields at: 'projectname' ifPresent: [ :field |
		newDetails at: 'projectname' put: field contents string withBlanksTrimmed.
	].
	^newDetails