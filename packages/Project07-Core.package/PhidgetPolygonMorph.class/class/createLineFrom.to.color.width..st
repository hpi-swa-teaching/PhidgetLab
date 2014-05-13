as yet unclassified
createLineFrom: startPoint to: endPoint color: aColor width: aNumber

	^ PolygonMorph
		vertices: {startPoint. endPoint}
		color: aColor
		borderWidth: aNumber
		borderColor: aColor