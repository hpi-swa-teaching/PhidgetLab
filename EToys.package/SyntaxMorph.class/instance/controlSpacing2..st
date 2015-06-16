formatting options
controlSpacing2: evt

	| origin scale startingContrastX |

	evt isMouseUp ifTrue: [
		^self removeProperty: #startingPointForSomeAdjustment
	].
	evt isMouseDown ifTrue: [
		^self setProperty: #startingPointForSomeAdjustment toValue: evt cursorPoint
	].
	SizeScaleFactor ifNil: [SizeScaleFactor := 0.15].
	scale := 200.0.
	startingContrastX := SizeScaleFactor * scale.
	origin := self valueOfProperty: #startingPointForSomeAdjustment.
	SizeScaleFactor := (evt cursorPoint x - origin x + startingContrastX) / scale min: 1.0 max: 0.0.
	self finalAppearanceTweaks.
