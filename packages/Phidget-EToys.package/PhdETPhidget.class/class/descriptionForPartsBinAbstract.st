PartsBin
descriptionForPartsBinAbstract
	"also set an Image Form, so no instance is created when creating a Thumbnail"
	
	"descriptionForPartsBin in my subclasses will simply call this method. But I cannot have the
	#descriptionForPartsBin selector myself. Else the ObjectsTool thinks I should be represented in the
	PartsBin."
	
	^ self descriptionForPartsBinBasic
		sampleImageForm: self getSampleImageForm;
		yourself.