event handling
acceptDroppingMorph: morphToDrop event: evt

	| f turtle |
	(morphToDrop renderedMorph isKindOf: SketchMorph) ifFalse: [
		^morphToDrop rejectDropMorphEvent: evt.
	].

	f := morphToDrop renderedMorph rotatedForm.
	f := f magnify: f boundingBox by: (1.0 / self pixelsPerPatch asFloat) smoothing: 1.

	turtle := self player newTurtleSilently.
	turtle createTurtlesAsIn: f originAt: ((morphToDrop topLeft - self topLeft) / self pixelsPerPatch asFloat) asIntegerPoint.
	"turtle isGroup: true."
	turtle color: (self dominantColorWithoutTransparent: f).
