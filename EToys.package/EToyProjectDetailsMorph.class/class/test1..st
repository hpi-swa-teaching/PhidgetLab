as yet unclassified
test1: aProject
"EToyProjectDetailsMorph test1: Project current"

	(self basicNew)
		project: aProject
		actionBlock: [ :x | 
			aProject world setProperty: #ProjectDetails toValue: x.
			x at: 'projectname' ifPresent: [ :newName | 
				aProject renameTo: newName.
			]
		];

		initialize;
		openCenteredInWorld