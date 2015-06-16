formatting options
controlContrast2: evt

	| origin scale startingContrastX |

	evt isMouseUp ifTrue: [
		^self removeProperty: #startingPointForSomeAdjustment
	].
	evt isMouseDown ifTrue: [
		^self setProperty: #startingPointForSomeAdjustment toValue: evt cursorPoint
	].
	ContrastFactor ifNil: [ContrastFactor := 0.5].
	scale := 200.0.
	startingContrastX := ContrastFactor * scale.
	origin := self valueOfProperty: #startingPointForSomeAdjustment.
	ContrastFactor := (evt cursorPoint x - origin x + startingContrastX) / scale min: 1.0 max: 0.0.
	self finalAppearanceTweaks.
