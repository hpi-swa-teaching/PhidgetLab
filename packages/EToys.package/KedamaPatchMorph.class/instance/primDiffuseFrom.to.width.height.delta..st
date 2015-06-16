primitives
primDiffuseFrom: srcBitmap to: dstBitmap width: width height: height delta: delta 
	"Diffuse the integer values of the source patch variable Bitmap into the output Bitmap. Each cell of the output is the average of the NxN area around it in the source, where N = (2 * delta) + 1."

	| area startY endY startX endX sum rowStart |
	<primitive: 'primitiveDiffuseFromToWidthHeightDelta' module: 'StarSqueakPlugin'>
	area := (2 * delta + 1) * (2 * delta + 1).
	1 to: height
		do: 
			[:y | 
			startY := y - delta.
			startY := startY max: 1.
			endY := y + delta.
			endY := endY min: height.
			1 to: width
				do: 
					[:x | 
					startX := x - delta.
					startX := startX max: 1.
					endX := x + delta.
					endX := endX min: width.
					sum := 0.
					startY to: endY
						do: 
							[:y2 | 
							rowStart := (y2 - 1) * width.
							startX to: endX do: [:x2 | sum := sum + (srcBitmap at: rowStart + x2)]].
					dstBitmap at: (y - 1) * width + x put: sum // area]]