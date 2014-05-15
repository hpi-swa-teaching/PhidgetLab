*Phidget-EToys
createLineFrom: startPoint to: endPoint color: aColor width: aNumber

	^ self
		vertices: {startPoint. endPoint}
		color: aColor
		borderWidth: aNumber
		borderColor: aColor