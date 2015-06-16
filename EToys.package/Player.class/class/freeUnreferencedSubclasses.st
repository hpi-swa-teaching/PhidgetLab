housekeeping
freeUnreferencedSubclasses
	"Player classes may hold in their class instance variables references
to instances of themselves that are housekeepingwise unreachable. This
method allows such loops to be garbage collected. This is done in three
steps:
	1. Remove user-created subclasses from the 'subclasses' set and from
Smalltalk. Only remove classes whose name begins with 'Player' and which
have no references.
	2. Do a full garbage collection.
	3. Enumerate all Metaclasses and find those whose soleInstance's
superclass is this class. Reset the subclasses set to this set of
classes, and add back to Smalltalk."
	"Player freeUnreferencedSubclasses"

	| oldFree candidatesForRemoval class |
	oldFree := Smalltalk garbageCollect.
	candidatesForRemoval := self subclasses asOrderedCollection select:
		[:aClass | (aClass name beginsWith: 'Player') and: [aClass name
endsWithDigit]].

	"Break all system links and then perform garbage collection."
	candidatesForRemoval do:
		[:c | self removeSubclass: c.  "Break downward subclass pointers."
		c environment removeKey: c name ifAbsent: [].  "Break binding of global
name"].
	candidatesForRemoval := nil.
	Smalltalk garbageCollect.  "Now this should reclaim all unused
subclasses"

	"Now reconstruct system links to subclasses with valid references."
	"First restore any global references via associations"
	(Association allSubInstances select:
			[:assn | (assn key isSymbol)
					and: [(assn key beginsWith: 'Player')
					and: [assn key endsWithDigit]]])
		do: [:assn | class := assn value.
			(class isKindOf: self class) ifTrue:
				[self addSubclass: class.
				class environment add: assn]].
	"Then restore any further direct references, creating new
associations."
	(Metaclass allInstances select:
			[:m | (m soleInstance name beginsWith: 'Player')
					and: [m soleInstance name endsWithDigit]])
		do: [:m | class := m soleInstance.
			((class isKindOf: self class) and: [(class environment includesKey: class
name) not]) ifTrue:
				[self addSubclass: class.
				class environment at: class name put: class]].
	SystemOrganization removeMissingClasses.
	^ Smalltalk garbageCollect - oldFree
