pop ups
replaceKeyWord: evt menuItem: stringMorph
	"Replace my entire message (which may be multi-part) with the one specified.  Preserve all argument tiles, either in the new message or in the world outside the scriptor.  I am a SelectorNode or KeyWordNode."

	| menu new news newSel mm newTree newRec newArgs top oldArgNodes share ctrY |
	(menu := stringMorph owner owner) class == RectangleMorph ifTrue: [
		menu delete].
	new := stringMorph contents.
	new first = $( ifTrue: [^ self].	"Cancel"
	new first = $  ifTrue: [^ self].	"nothing"
	news := String streamContents: [:strm | "remove fake args"
		(new findBetweenSubStrs: {' 5'. Character space.}) do: [:part | strm nextPutAll: part]].
	newSel := stringMorph valueOfProperty: #syntacticallyCorrectContents.
	newSel ifNil: [newSel := news].
	mm := MessageSend receiver: 5 selector: newSel 
			arguments: ((Array new: newSel numArgs) atAllPut: 5).
	newTree := mm asTilesIn: Object globalNames: false.
	newRec := newTree receiverNode.
	newArgs := newTree argumentNodes.
	ctrY := self fullBoundsInWorld center y.
	top := self messageNode.
	newRec owner replaceSubmorph: newRec by: top receiverNode.
	oldArgNodes := top argumentNodes.
	share := newArgs size min: oldArgNodes size.
	(newArgs first: share) with: (oldArgNodes first: share) do: [:newNode :oldNode | 
		newNode owner replaceSubmorph: newNode by: oldNode].
	"later get nodes for objects of the right type for new extra args"

	top owner replaceSubmorph: top by: newTree.

	"Deposit extra args in the World"
	(oldArgNodes copyFrom: share+1 to: oldArgNodes size) do: [:leftOver |
		(leftOver parseNode class == LiteralNode and: [leftOver decompile asString = '5']) 
			ifFalse: [newTree pasteUpMorph addMorphFront: leftOver.
				leftOver position: newTree enclosingPane fullBoundsInWorld right - 20 @ ctrY.
				ctrY := ctrY + 26]
			ifTrue: [leftOver delete]].
	newTree acceptIfInScriptor.