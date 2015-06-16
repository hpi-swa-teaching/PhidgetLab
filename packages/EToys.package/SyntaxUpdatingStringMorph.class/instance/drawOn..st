drawing
drawOn: aCanvas

	| tempForm strm where chars wid spaceWidth putLigature topOfLigature sizeOfLigature colorOfLigature dots charZero canvas f |

	tempForm := Form extent: self extent depth: aCanvas depth.
	canvas := tempForm getCanvas.
	f := self fontToUse.
	spaceWidth := f widthOf: Character space.
	strm := ReadStream on: contents.
	charZero := Character null.	"a marker for center dot ·"
	where := 0@0.
	topOfLigature := self height // 2 - 1.
	sizeOfLigature := (spaceWidth-2)@(spaceWidth-2).
	colorOfLigature := Color black alpha: 0.45	"veryLightGray".
	dots := OrderedCollection new.
	putLigature := [
		dots add: ((where x + 1) @ topOfLigature extent: sizeOfLigature).
		where := where + (spaceWidth@0)].
	strm peek = charZero ifTrue: [
		strm next.
		putLigature value].
	[strm peek = charZero] whileTrue: [strm next].
	[strm atEnd] whileFalse: [
		chars := strm upTo: charZero.
		wid := f widthOfString: chars.
		canvas drawString: chars at: where.
		where := where + (wid@0).
		strm atEnd ifFalse: [putLigature value.
			[strm peek = charZero] whileTrue: [strm next]].
	].
	aCanvas paintImage: tempForm at: self topLeft.
	dots do: [ :each |
		aCanvas 
			fillRectangle: (each translateBy: self topLeft) 
			fillStyle: colorOfLigature.
	].
