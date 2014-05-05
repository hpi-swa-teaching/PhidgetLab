I am an abstract Phidget Component for components that cann exist serveral times on a Phidget, but the exact number differs from Phidget to Phidget. (The Phidget type allows different numbers).


Instance Variables
	index:		<Integer>
	nextLink:	<nil or PhdCrMultiComponent>

index
	- number that identifies me on a Phidgets that has more instances of my class. Like 'parent' it is provided on construction and will never change again.
	- Needed on every primitve invocation, except for the primitive getting the number of equal components (componentCount).

nextLink
	- Needed to be member of a linked list. Can be ignored for Phidget understanding.


About MultiComponents:
	When a Phidget with a multi-component is attached, it initializes the list containing instances of this class. It uses my classes 'getListFor:' method to do this.
	'getListFor:' dynamically gets the number of similar components and adds one list item for each to the list. It calls 'primComponentCount:' to determine this number. This method must be overritten in subclasses to point to the right primitive.
	A MultiComponent is created by sending the 'newWith:index:' method to my class, because like in simple Components it needs a phidget 'parent', and for Multicomponents it aditionally needs its index (see above).
