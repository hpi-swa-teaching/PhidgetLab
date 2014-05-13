menu
mclRemoveFilter
	specifications ifNotNil: [^specifications removeFiltering ifTrue: [self list: origObjects]].
	filter ifNotEmpty: 
			[filter := OrderedCollection new.
			self list: origObjects]