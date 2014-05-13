layout
layout: aMorph in: box
	| submorphs loc |

	submorphs := aMorph submorphs.

	"Lay items out vertically and install them in the scroller"
	loc := 0@0.
	submorphs do: [:m | m bounds: (loc extent: width@itemHeight).  loc := loc + (0@itemHeight)].

	"Transcript show: submorphs size printString;cr."