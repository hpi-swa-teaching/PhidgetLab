as yet unclassified
onServer: aProjectServer
	"EToyProjectQueryMorph onServer: SuperSwikiServer testOnlySuperSwiki"

	

	(self basicNew)
		project: nil
		actionBlock: [ :x | | criteria | 
			criteria := OrderedCollection new.
			x keysAndValuesDo: [ :k :v | | clean |
				(clean := v withBlanksTrimmed) isEmpty
					ifFalse: [criteria add: k,': *',clean,'*']].
			aProjectServer queryProjectsAndShow: criteria];

		initialize;
		becomeModal;
		openCenteredInWorld