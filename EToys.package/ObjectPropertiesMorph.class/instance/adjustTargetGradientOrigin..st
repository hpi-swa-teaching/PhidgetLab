as yet unclassified
adjustTargetGradientOrigin: aFractionalPoint

	| fs p |

	(fs := myTarget fillStyle) isGradientFill ifFalse: [^self].
	fs origin: (p := myTarget topLeft + (aFractionalPoint * myTarget extent) rounded).
	self showSliderFeedback: p.
	myTarget changed.
