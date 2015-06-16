parts bin
stackHelpWindow
	^ (Workspace new contents: 'A "stack" is a place where you can create, store, view and retrieve data "fields" from a set of "cards".  Data that you want to occur on every card (such as a name and an address in an Address Stack) are represented by objects such as "Simple Text", "Fancy Text", and "Scrolling Text" that you obtain from the Stack Tools flap.

When you look at a card in a Stack, you may be seeing three different kinds of material.  Press the § button in the stack''s controls to see the current designations, and use the "explain designations" to get a reminder of what the three different colors mean.
·  Things that are designated to be seen on every card, and have the same contents whichever card is being shown. (green)
·  Things that are designated to be seen on every card, with each card having its own value for them. (orange)
·  Things that are designated to occur only on the particular card at hand. (red)

Use the "stack/cards" menu (in an object''s halo menu) to change the designation of any object.  For example, if you have an object that is private to just one card, and you want to make it visible on all cards, use "place onto background".  If you further want it to hold a separate value for each separate card, use "start holding separate data for each instance".

The normal sequence to define a Stack''s structure is to obtain a blank Stack, then create your fields by grabbing what you want from the Stack Tools flap and dropping it where you want it in the stack.  For easiest use, give a name to each field (by editing the name in its halo) *before* you put it onto the background..  Those fields that you want to represent the basic data of the stack need to be given names, placed on the background, and then told to hold separate data.

When you hit the + button in a stack''s controls, a new card is created with default values in all the fields.  You can arrange for a particular default value to be used in a field -- do this either for one field at a time with "be default value on new card", or you can request that the all the values seen on a particular card serve as default by choosing "be defaults for new cards" from the stack''s · menu.

It is also possible to have multiple "backgrounds" in the same stack -- each different background defines a different data structure, and cards from multiple backgrounds can be freely mixed in the same stack.

Besides text fields, it is also possible to have picture-valued fields -- and potentially fields with data values of any other type as well.')

	openLabel: 'Stack Help'

	"StackMorph stackHelpWindow"