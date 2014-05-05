PartsBin
getSampleImageForm
	"Get a Image Form that will be transofmed into a Thumbnail for PartsBin.
	Do not create a real instance of myself"
	"Cache the image because this method is called quite often when dealing with the ObjectsTool."
	
	self sampleImageForm ifNil: [
		self sampleImageForm: (self newThumbnailStandAlone imageFormDepth: 32) ].
	^ self sampleImageForm