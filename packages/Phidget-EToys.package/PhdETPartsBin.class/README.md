A parts bin, that allows Phidget-Morphs to behave like the objects tool to create new Ports.
It overwrites some methods of the parts bin to allow that the created Morph knows its creator (the Phidget holding this bin).
This PartsBin is used by PhdETPortBasedPhidget and its subclasses.