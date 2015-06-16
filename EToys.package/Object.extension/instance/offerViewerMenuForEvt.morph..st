*Etoys-viewer
offerViewerMenuForEvt: anEvent morph: aMorph
	"Offer the viewer's primary menu to the user.  aMorph is some morph within the viewer itself, the one within which a mousedown triggered the need for this menu, and it is used only to retrieve the Viewer itself"

	self offerViewerMenuFor: (aMorph ownerThatIsA: StandardViewer) event: anEvent