drawing
drawOn: aCanvas

    | rect |
    rect := Rectangle origin: self position corner: self position + (self width @ self height).
    aCanvas fillRectangle: rect color: self color.

    (self connector isNil) ifFalse: [self connector drawNumber: aCanvas.].

