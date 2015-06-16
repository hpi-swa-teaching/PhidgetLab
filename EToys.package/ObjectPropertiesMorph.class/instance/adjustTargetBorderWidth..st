as yet unclassified
adjustTargetBorderWidth: aFractionalPoint

	| n |

	myTarget borderWidth: (n := (aFractionalPoint x * 10) rounded max: 0).
	self showSliderFeedback: n.