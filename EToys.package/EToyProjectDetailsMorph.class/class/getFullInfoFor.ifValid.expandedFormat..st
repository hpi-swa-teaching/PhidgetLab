as yet unclassified
getFullInfoFor: aProject ifValid: aBlock expandedFormat: expandedFormat

	| me |

	(me := self basicNew)
		expandedFormat: expandedFormat;
		project: aProject
		actionBlock: [ :x | 
			aProject world setProperty: #ProjectDetails toValue: x.
			x at: 'projectname' ifPresent: [ :newName | 
				aProject renameTo: newName.
			].
			me delete.
			aBlock value.
		];

		initialize;
		becomeModal;
		openCenteredInWorld