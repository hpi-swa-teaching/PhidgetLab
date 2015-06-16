instance creation
new

	| listMorph model |

	model := EToyHierarchicalTextGizmo new 
		topNode: EToyTextNode newNode.
	(listMorph := EToyHierarchicalTextMorph 
		on: model
		list: #getList
		selected: #getCurrentSelection
		changeSelected: #noteNewSelection:
		menu: #genericMenu:
		keystroke: nil).
	listMorph autoDeselect: false.
     ^ listMorph