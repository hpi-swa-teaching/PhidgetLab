initialization
initialize

	| newStyle |
	super initialize.
	firstDisplay := true.
	children := OrderedCollection new.
	(newStyle := TextStyle named: #Palatino) ifNotNil: [
		textStyle := newStyle copy defaultFontIndex: 2
	].

