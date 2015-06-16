as yet unclassified
testAllMethodsOver: methodSize 
	"MessageTally spyOn: [SyntaxMorph testAllMethodsOver: 600]"
	"Add up the total layout area for syntax morphs representing all  
	methods over the given size. This is a stress-test for SyntaxMorph  
	layout. A small value for the total area is also a figure of merit in the  
	presentation of Squeak source code in general."
	"Results:  
	#(69 600 180820874 103700) 11/4  
	70% build morphs, 12% get source, 9% layout, 8% parse, 1% roundoff  
	Folded wide receivers, don't center keywords any more.  
	#(68 600 160033784 127727) 11/9  
	76% build morphs, 8% get source, 8% layout, 8% parse, 0% roundoff  
	Folded more messages, dropped extra vertical spacing in blocks.  
	#(68 600 109141704 137308) 11/10  
	79% build morphs, 6% get source, 8% layout, 7% parse  
	Folded more messages, dropped extra horizontal spacing.  
	#(68 600 106912968 132171) 11/10  
	80% build morphs, ??% get source, 11% layout, 7% parse  
	Unfolded keyword messages that will fit on one line.  
	#(68 600 96497372 132153) 11/10  
	81% build morphs, ??% get source, 8% layout, 8% parse  
	After alignment rewrite...  
	#(74 600 101082316 244799) 11/12  
	76% build morphs, 4% get source, 15% layout, 5% parse  
	After alignment rewrite...  
	#(74 600 101250620 204972) 11/15  
	74% build morphs, 6% get source, 13% layout, 7% parse  
	"
	| biggies stats area |
	biggies := self systemNavigation 
				allMethodsSelect: [:cm | cm size > methodSize].
	stats := OrderedCollection new.
	'Laying out all ' , biggies size printString , ' methods over ' , methodSize printString , ' bytes...'
		displayProgressFrom: 1
		to: biggies size
		during: [:bar | biggies
				withIndexDo: [:methodRef :i | | time | 
					bar value: i.
					Utilities
						setClassAndSelectorFrom: methodRef
						in: [:aClass :aSelector | | source | 
							source := (aClass compiledMethodAt: aSelector) getSourceFromFile.
							time := Time
										millisecondsToRun: [ | tree morph |
											tree := Compiler new
														parse: source
														in: aClass
														notifying: nil.
											morph := tree asMorphicSyntaxUsing: SyntaxMorph.
											area := morph fullBounds area]].
					stats add: {methodRef. area. time}]].
	^ {{
			biggies size.
			methodSize.
			stats detectSum: [:a | a second].
			stats detectSum: [:a | a third]
		}.
		stats asArray sort: [:x :y | x third >= y third]}