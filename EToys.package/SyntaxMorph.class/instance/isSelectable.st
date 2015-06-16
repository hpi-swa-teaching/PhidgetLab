selection
isSelectable
	| ss |
	"Spacer morphs enclose other morphs with the same parseNode"
	self submorphs size > 1 ifTrue: [
		ss := self submorphs second.
		ss isSyntaxMorph ifTrue: [
			ss parseNode == parseNode ifTrue: [
				^ self submorphs first class ~~ Morph]]].
		
"	(self nodeClassIs: SelectorNode) ifTrue: [^ false].
	(self nodeClassIs: KeyWordNode) ifTrue: [^ false].
"
	self isMethodNode ifTrue: [^ false].
	parseNode ifNil: [^ false].
	^ true