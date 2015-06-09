private
updateMinBounds

	({ label. refreshButton. attachedLabel. openedList. openedLabel } allSatisfy: [ :item | item notNil ]) ifTrue: [
		self minHeight: 2 * self paddingTopBottom + (openedList bottom - label top).
		self vResizeToFit: true.
		self minWidth:
			self paddingRight + self paddingLeft + 
			{ refreshButton width.
			  attachedLabel width.
			  openedLabel  width.
			  openedList width.
			  attachedList width } max
	].