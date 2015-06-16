initialization
establishContents 
	"Perform any initialization steps that needed to wait until I am installed in my outer viewer"

	searchString isEmptyOrNil ifFalse: [self doSearchFrom: searchString interactive: false]