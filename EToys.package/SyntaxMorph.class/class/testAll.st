as yet unclassified
testAll

	| systNav total count|
"
SyntaxMorph testAll
"
	systNav := self systemNavigation.
	count := total := 0.
	systNav allBehaviorsDo: [ :aClass | total := total + 1].
'Testing all behaviors'
	displayProgressFrom: 0 to: total
	during: [ :bar |
		systNav allBehaviorsDo: [ :aClass |
			bar value: (count := count + 1).
			aClass methodsDo: [ :m |
				| source tree |
				source := m getSourceFromFile.
				tree := Compiler new 
					parse: source 
					in: aClass 
					notifying: nil.
				tree asMorphicSyntaxUsing: SyntaxMorph.
			].
		].	].


