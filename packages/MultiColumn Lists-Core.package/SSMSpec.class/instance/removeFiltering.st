mclm interface
removeFiltering
	currentFilter ifEmpty: [^false].
	currentFilter _ OrderedCollection new.
	^true