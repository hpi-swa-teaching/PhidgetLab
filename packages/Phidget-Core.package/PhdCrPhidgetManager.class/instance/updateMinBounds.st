private
updateMinBounds

	({ label. refreshButton. attachedLabel. openedList. openedLabel } allSatisfy: [ :item | item notNil ]) ifTrue: [
		self minHeight: 2 * self paddingTopBottom + ( openedList bottom - label top ).
		self minWidth:
			2 * self paddingLeftRight +
			{ label width + self paddingLeftRight + refreshButton width.
			  attachedLabel width.
			  openedLabel  width } max
	].