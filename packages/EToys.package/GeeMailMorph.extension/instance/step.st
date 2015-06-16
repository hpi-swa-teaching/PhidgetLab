*Etoys-customevents-stepping and presenter
step
	"For each submorph of thePasteUp that has just been scrolled into view, fire the script named #scrolledIntoView, if any.
	For each submorph of thePasteUp that has just been scrolled out of view, fire the script named #scrolledOutOfView, if any."
	| lastVisible nowVisible newlyVisible newlyInvisible |
	super step.
	lastVisible := self visibleMorphs.
	nowVisible := (thePasteUp submorphs copyWithoutAll: (self allTextPlusMorphs))
		select: [ :m | self bounds intersects: (m boundsIn: self world) ].
	newlyInvisible := lastVisible difference: nowVisible.
	newlyInvisible do: [ :ea | ea triggerEvent: #scrolledOutOfView ].
	newlyVisible := nowVisible difference: lastVisible.
	newlyVisible do: [ :ea | ea triggerEvent: #scrolledIntoView ].
	self visibleMorphs: nowVisible.
	