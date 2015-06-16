Represents a variable held in a Player on behalf of a Morph.  When a new Player gets installed in the Morph, variables representing the old player need to be committed to the old player's storage, if not already done, and then new values for the variables need to be obtained from the new Player.  The VariableDock does the actual data transfer.

variableName 		A Symbol.  The name by which this variable known in the bearer,  a Card
type 				An object representing the variable's type.  Initially, we, like the rest
						use a Symbol to represent this.
						Presently #string #number #boolean #object #reference #sound etc.
definingMorph		The morph that requested storage of this variable
morphGetSelector	The message to be sent to the morph to obtain the variable's value
morphPutSelector	The message to be sent to the morph to put a new var value into it
owningClass			The Uniclass of which this is an instance variable
playerGetSelector 	The message to be sent to the Player to obtain its current stored value
playerPutSelector 	The message to be sent to the Player to set a new stored value
defaultValue		The value to set for the variable by default
floatPrecision		e.g. 0, 0.1, 0.001.  Only relevant for numeric-type variables
