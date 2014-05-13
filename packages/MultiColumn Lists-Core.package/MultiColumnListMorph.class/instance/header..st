accessing
header: arrayOfStringsForHeader
	| f |

	arrayOfStringsForHeader ifNil: [
		header isNil ifTrue: [^nil].
		header scrolls ifFalse: [header delete].
		header := nil.
		self resizeScroller.
		^self recalcSizes
	].
	(arrayOfStringsForHeader isKindOf: Collection) ifTrue: [
		f := MultiColumnListHeader on: arrayOfStringsForHeader asArray.
		f keepHeaderAtTop.
	] ifFalse: [f := arrayOfStringsForHeader].
	f = header ifTrue: [^nil].
	(header notNil and: [header scrolls not]) ifTrue: [
		header delete.
		header := nil.
		self resizeScroller.
	].
	header := f.
	f := TextStyle defaultFont emphasized: 1.
	header font: f; backgroundColor: Color gray.
	header scrolls ifFalse: [|bnd|
		bnd := self rawInnerBounds.
		bnd := bnd bottom: (bnd top + header neededHeight).
		bnd := bnd left: (bnd left + 3).
		header bounds: bnd.
		self addMorph: header.
		header bounds: bnd.
		self resizeScroller.
		scroller changed.
	].
	self recalcSizes