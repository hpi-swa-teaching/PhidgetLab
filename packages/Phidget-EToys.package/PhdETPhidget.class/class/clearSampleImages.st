PartsBin
clearSampleImages
	"clear all sample images that will get thumbnails in ObjectsTool."

	self withAllSubclassesDo: [ :aClass | aClass sampleImageForm: nil ].