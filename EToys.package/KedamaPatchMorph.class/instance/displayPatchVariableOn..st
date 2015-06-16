drawing
displayPatchVariableOn: aForm

	| patchVar pixelValue |
	form ifNil: [^self].

	formChanged ifTrue: [
		"displayForm fillColor: Color transparent."
		pixelValue := (self color pixelValueForDepth: 32) bitAnd: 16rFFFFFF.
		form bits class == ByteArray ifTrue: [form unhibernate].
		patchVar := form bits.
		displayForm bits class == ByteArray ifTrue: [displayForm unhibernate].
		displayType = #linear ifTrue: [
			self primMakeMaskOf: patchVar in: displayForm bits colorPixel: pixelValue shift: shiftAmount.
		].
		displayType = #logScale ifTrue: [
			self primMakeMaskOf: patchVar in: displayForm bits colorPixel: pixelValue max: displayMax.
		].
		displayType = #color ifTrue: [
			form displayOn: displayForm.
			displayForm fixAlpha.
		].
	].

	tmpForm fillColor: Color black.
	displayForm displayOn: tmpForm at: 0@0 rule: 24.
	aForm == tmpForm ifFalse: [
		displayForm displayOn: aForm at: 0@0 rule: 24.
	].
	formChanged := false.

