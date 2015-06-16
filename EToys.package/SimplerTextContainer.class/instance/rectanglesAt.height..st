container protocol
rectanglesAt: lineY height: lineHeight
	"Return a list of rectangles that are at least minWidth wide
	in the specified horizontal strip of the shadowForm.
	Cache the results for later retrieval if the owner does not change."
	| rects |

	lineY > textMorph owner bottom ifTrue: [^#()].
	rects := Array with: (self left@lineY extent: textMorph width@lineHeight).
	"rects := rects collect: [:r | r insetBy: OuterMargin@0]."
	^ rects