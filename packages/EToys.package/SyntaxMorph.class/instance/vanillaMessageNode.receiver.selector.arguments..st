node to morph
vanillaMessageNode: aNode receiver: receiver selector: selector arguments: arguments

	| substitute row sel |
	sel := #message.
	((self nodeClassIs: CascadeNode) and: [self parseNode receiver ~~ aNode]) ifTrue: [
		sel := #keyword2.
		receiver ifNotNil: [self inform: 'receiver should be nil']].
	row := self addRow: sel on: aNode.
	substitute := aNode as: TileMessageNode.
	(aNode macroPrinter == #printCaseOn:indent:) ifTrue: [
		aNode asMorphicCaseOn: row indent: nil.
		^ self].
	aNode macroPrinter
		ifNotNil: 
			[substitute perform: aNode macroPrinter with: row with: nil]
		ifNil: 
			[substitute 
				printKeywords: selector key
				arguments: arguments
				on: row
				indent: nil].
	^ row addTransparentSpacerOfSize: 3@0.	"horizontal spacing only"
