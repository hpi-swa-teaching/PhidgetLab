housekeeping
removeUninstantiatedSubclassesSilently
	"Remove the classes of any subclasses that have neither instances nor subclasses.  Answer the number of bytes reclaimed"
	"Player removeUninstantiatedSubclassesSilently"

	| candidatesForRemoval  oldFree |

	oldFree := Smalltalk garbageCollect.
	candidatesForRemoval := OrderedCollection new.
	self allSubclassesWithLevelDo: [:e :l | candidatesForRemoval add: e] startingLevel: 2.
	candidatesForRemoval := candidatesForRemoval reverse.
	candidatesForRemoval :=
		candidatesForRemoval select: [:c |
			(c instanceCount = 0) and: [c subclasses size = 0]].
	candidatesForRemoval := candidatesForRemoval select:
		[:aClass | aClass isSystemDefined not].
	candidatesForRemoval do: [:c | c removeFromSystemUnlogged].
	^ Smalltalk garbageCollect - oldFree