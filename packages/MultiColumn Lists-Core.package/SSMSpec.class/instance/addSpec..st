private
addSpec: aSSMColumnSpec
	(ssmColSpecs ifNil: [ssmColSpecs := OrderedCollection new])
		addLast: aSSMColumnSpec.
	showScreen addLast: aSSMColumnSpec visible.