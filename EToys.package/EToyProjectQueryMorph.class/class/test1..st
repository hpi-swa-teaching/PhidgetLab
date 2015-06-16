as yet unclassified
test1: aProject
"EToyProjectQueryMorph test1: nil"

	

	(self basicNew)
		project: aProject
		actionBlock: [ :x | | criteria | 
			criteria := OrderedCollection new.
			x keysAndValuesDo: [ :k :v | | clean |
				(clean := v withBlanksTrimmed) isEmpty ifFalse: [
					criteria add: k,': *',clean,'*'
				].
			].
			SuperSwikiServer testOnlySuperSwiki queryProjectsAndShow: criteria
		];

		initialize;
		openCenteredInWorld