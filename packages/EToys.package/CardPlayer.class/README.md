CardPlayer
	Instance variables of the Uniclass represent the data in the "fields" of each card in the stack.
	Each Instance variable is some kind of value holder.

	The code for the *buttons* on the background resides in the CardPlayer uniclass.

privateMorphs -- OrderedCollection of objects specific to this card.

Individual CardPlayer classes need to store the search results of any instances that are templates.  As a hack, we use a class variable TemplateMatches in each individual class (CardPlayer21).  It is initialized in #matchIndex:.
TemplateMatches   an IndentityDictionary of 
		(aCardPlayer -> (list of matching cards, index in that list))
