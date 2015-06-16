accessing
colorAt: aLocalPoint

	| pix |
	pix := patchVarDisplayForm pixelValueAt: (aLocalPoint // pixelsPerPatch) asIntegerPoint.
	^ Color colorFromPixelValue: (pix bitOr: 16rFF000000) depth: 32.
