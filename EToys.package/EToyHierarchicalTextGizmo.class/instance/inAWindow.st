as yet unclassified
inAWindow
	| window  |

	window := (SystemWindow labelled: 'HText') model: self.
	window 
		addMorph: self notInAWindow
		frame: (0@0 corner: 1@1).
     ^ window