instance creation
openGallery
	"self openGallery"
	| window |
	window := self buildGallery.
	window openCenteredInWorld.
	^ window