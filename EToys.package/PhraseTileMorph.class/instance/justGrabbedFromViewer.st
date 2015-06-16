miscellaneous
justGrabbedFromViewer
	"Answer whether the receiver originated in a Viewer.  Only tiles that originated in a viewer will ever do that infernal sprouting of a new script around them.  The nil branch is only for backward compatibility."

	^ justGrabbedFromViewer ifNil: [justGrabbedFromViewer := true]