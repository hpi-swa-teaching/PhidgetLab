as yet unclassified
clearSliderFeedback

	| feedBack |

	feedBack := self valueOfProperty: #sliderFeedback ifAbsent: [^self].
	feedBack delete