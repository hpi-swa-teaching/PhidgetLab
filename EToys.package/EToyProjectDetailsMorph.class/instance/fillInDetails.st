as yet unclassified
fillInDetails

	theProject ifNotNil: [
		namedFields at: 'projectname' ifPresent: [ :field |
			field contentsWrapped: theProject name
		].
	].
	projectDetails ifNotNil: [
		self fieldToDetailsMappings do: [ :each |
			namedFields at: each first ifPresent: [ :field |
				projectDetails at: each second ifPresent: [ :data |
					field contentsWrapped: data
				].
			].
		].
	].