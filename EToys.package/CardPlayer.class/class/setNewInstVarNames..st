user-defined inst vars
setNewInstVarNames: listOfStrings
	"Make listOfStrings be the new list of instance variable names for the receiver"

	| disappearing firstAppearing instVarString instVarList |
	instVarList := self instVarNames asOrderedCollection.
	disappearing := instVarList copy.
	disappearing removeAllFoundIn: listOfStrings.
	disappearing do:
		[:oldName | 	self removeAccessorsFor: oldName].
	firstAppearing := listOfStrings copy.
	firstAppearing removeAllFoundIn: instVarList.
	instVarString := String streamContents:
		[:aStream | listOfStrings do: [:aString | aStream nextPutAll: aString; nextPut: $ ]].

	superclass subclass: self name instanceVariableNames: instVarString 
		classVariableNames: '' poolDictionaries: '' category: self categoryForUniclasses.
	firstAppearing do:
		[:newName | self compileAccessorsFor: newName].
