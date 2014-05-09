I am an abstract class that provides some primitives and methods for Phidget support. Please read the comments of my subclasses to find more information how to use Phidgets in Squeak.

Instance Variables
	id:						<ByteArray>
	opened:					<Boolean>
	userProcessBlocks:	<Dictionary> (Symbol -> Block)
	semaphores:				<Dictionary> (Symbol -> Semaphore)
Class Instance Variables
	SystemCallback:		<Dictionary> (Symbol -> Symbol)
	
id
	- a ByteArray that contains the Phidget's unique identifier for the C API. Every primitive (except the one where the handle is created) needs this ByteArray to let the C API know about which Phidget it is currently talking to.
	- the id is obtained when creating the phidget object and will stay there until the object is deleted or the id became invalid (see checkInvalid method).
	- an id can become invalid if the phidget is created, the Squeak image saved, closed and then reloaded. As the plugin was shutdown when the VM is closed, the hardware connection to the phidget is broken. checkValid checks the id and resets it to a default value if the id has become invalid. This object cannot be used for communication with any Phidget anymore.
	- checkValid should be called before doing any primitve with a phidget id.

opened
	- true, if the Phidget was opened - Squeak is able to communicate with the hardware. This does not mean there is a Phidget attached.
	- false, if the Phidgets was not opened or was opened and then closed.

semaphores
	- A Dictionary with entries of the following form: aSymbol -> aSemaphore.
	aSymbol may be #Attach, #Detach, #Error for Phidgets in general. Other symbols may exist for phidget specific support in my subclasses. My classes method 'knownCallback' answers a list of callbacks I know.
	I use this dictionary to handle the callbacks from the Phidget C API.
	These semaphores can be registered for certain events (like the attach event) - so that the C API signals is if the event occours. These semaphores are used in my callbackProcess method.

userProcessBlocks
	- a Dictionary with entries of the following form: aSymbol -> aBlock.
	The symbols are equivalent to the symbols used in the semaphores dictionary.
	I use this dictionary to handle the callbacks from the Phidget C API.
	Each time a semaphore from the semaphores dictionary was signaled from the C API, I evaluate the corresponding block from this dictionary in the callbackProcess method.
	In the base class possible callbacks are: #Attach, #Detach, #Error

SystemCallbacks
	My class has a method called 'systemCallbacks'. This Dictionary is similar to the userProcessBlocks: It maps from callbackNames to message selectors. Those messages willbe sent when the semaphore at 'callbackName' is signaled.
	In contrast to userProcessBlocks this Dictionary is immutable to the user. Currently it is only used for initializing and deleting phidget components an attaching/detaching (see below).

About Components:
	A phidget can have several components, e.g. a list of outputs or a LED. Those components derive from the PhdCrComponent class. See its documentation to lern more about them.
	When a phidget is attached, it initializes its components using 'initializeComponents'. When the phidget is detached or closed, 'deleteComponents' deletes them again.
	A Component a Phidget can have is represented by an instance variable in that class. Add a getter and initialisation/deletion instructions in initialize / initializeComponents / deleteComponents.
	As there are different Phidgets per phidget class, the umber of components can differ. A InterfaceKit can for instance have 8 sensors, others might have none. The implementations of initializeComponents, delete components and initialize must be aware of that.

IMPORTANT:
After using the Phidget it is important to close the connection to the hardware by sending 'close':
	phidget close.
or to unload the plugin (e.g. by closing Squeak).