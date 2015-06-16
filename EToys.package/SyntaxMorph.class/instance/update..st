updating
update: aSymbol

	| bingo saveOwner newMorph db |

	(db := self debugger) ifNil: [^super update: aSymbol].
	aSymbol == #contents ifTrue: [
		saveOwner := owner.
		db removeDependent: self.
		markerMorph ifNotNil: [markerMorph delete. markerMorph := nil].
		newMorph := db createSyntaxMorph.
		self delete.
		saveOwner addMorph: newMorph.
		saveOwner owner setScrollDeltas.
		newMorph update: #contentsSelection.
	].
	aSymbol == #contentsSelection ifTrue: [
		markerMorph ifNil: [
			markerMorph := RectangleMorph new.
			markerMorph
				color: Color transparent;
				borderWidth: 2;
				borderColor: Color red;
				lock.
			owner addMorphFront: markerMorph.
		].
		bingo := parseNode rawSourceRanges keyAtValue: db pcRange ifAbsent: [nil].
		self testForNode: bingo andDo: [ :foundMorph | 
			markerMorph
				position: foundMorph position;
				extent: foundMorph extent.
			owner owner scrollIntoView: foundMorph bounds extra: 0.5.
			^self
		].
	].
	super update: aSymbol