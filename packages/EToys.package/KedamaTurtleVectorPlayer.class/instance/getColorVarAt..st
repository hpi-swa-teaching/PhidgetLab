accessing - private
getColorVarAt: index

	^ (arrays at: index) collect: [:c | Color colorFromPixelValue: c depth: 32].
