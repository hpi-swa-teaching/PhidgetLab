as yet unclassified
instanceReport	"for cleaning up Alan's demo"
"
EToySenderMorph instanceReport
"
	| answer resp |

	Smalltalk garbageCollect.
	answer := self allInstances collect: [ :each |
		{
			each.
			[each ipAddress] on: Error do: [ 'no ipAddress'].
			each owner 
					ifNil: ['* no owner *'] 
					ifNotNil: [each owner innocuousName,' ',each owner printString].
			each world ifNil: ['-----no project-----'] ifNotNil: [each world project name].
		}
	].
	resp := UIManager default chooseFrom:  {
		'IP Address'.
		'Project'.
		'Owner'
	}  title:  'Sorted by'.
	resp = 1 ifTrue: [
		^(answer asSortedCollection: [ :a :b | a second <= b second]) asArray explore
	].
	resp = 2 ifTrue: [
		^(answer asSortedCollection: [ :a :b | a fourth <= b fourth]) asArray explore
	].
	resp = 3 ifTrue: [
		^(answer asSortedCollection: [ :a :b | a third <= b third]) asArray explore
	].
	answer explore