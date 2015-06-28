as yet unclassified
testDeleteButton
	"make sure the delete button added to the phidget manager actually works"
	"closes all opened InterfaceKits because buttons have no reference to the opened Kits"
	| interfaceKit deleteButton |
	interfaceKit := PhdETAdvancedInterfaceKit newStandAlone openInWorld.

	deleteButton := self subject findByLabel: 'x'.

	self assert: interfaceKit isInWorld.
	deleteButton click.
	self assert: interfaceKit isInWorld = false.
	
