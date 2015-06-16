playerList
hasAnyTextuallyCodedScripts
	"Answer whether any uniclasses in the receiver have any textually coded scripts"

	self uniclassesAndCounts do:
		[:classAndCount | 
			classAndCount first scripts do:
				[:aScript | aScript isTextuallyCoded ifTrue: [^ true]]].
	^ false

"
ActiveWorld presenter hasAnyTextuallyCodedScripts
"