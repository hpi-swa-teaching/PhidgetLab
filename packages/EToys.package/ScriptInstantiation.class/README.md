One of these is associated with each user-defined script for each Player.   Holds the state that defines when the script should be run automatically by the system.

	player				The player whose script this is.
	selector				The message to send my player to activate this script
	status				#ticking, #paused, #normal, #mouseDown, #mouseStillDown, #mouseUp,
							#mouseEnter, #mouseLeave, #keyStroke
	frequency			For ticking scripts, their frequency.  Place-holder: not implemented yet
	anonymous			If true, the script has is unnamed -- in this case, the selector is private to the implementation