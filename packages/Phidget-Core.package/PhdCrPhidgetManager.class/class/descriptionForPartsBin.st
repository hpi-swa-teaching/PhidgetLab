PartsBin
descriptionForPartsBin
	"also set an Image Form, so no instance is created when creating a Thumbnail"
	
	^ self descriptionForPartsBinBasic
		sampleImageForm: self getSampleImageForm;
		yourself.