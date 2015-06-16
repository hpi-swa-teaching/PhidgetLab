as yet unclassified
test1

	| m prop |
	m := EllipseMorph new.
	prop := m ensuredButtonProperties.
	prop
		target: #(1 2 3);
		actionSelector: #inspect;
		actWhen: #mouseUp.
	m openInWorld.