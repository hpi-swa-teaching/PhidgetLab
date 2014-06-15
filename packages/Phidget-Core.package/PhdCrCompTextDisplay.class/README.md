I am an abstract Phidget Component that can display texts on a display.

I have a number of rows and columns. In one cell I can display one character.
You can ask me to display a character at one cell (displayCharacter:inRow:andColumn:), or to display a string in a row (displayString:inRow:). If the string is too long it will be truncated to fit the line.
The original - too long - text is cached, so that is can be displayed if you enable scrolling.
You can ask me to scroll through the text in an endless loop (startScrolling:, stopScrolling:), also for each row seperately.
Scrolling speed is controlled with my waitTime. My seperator is displayed between start and end of the string.

Note:
 - When the phidget is attached it should call 'initializeRows', when it is detached 'initializeRowsEmpty'. Else there will be displaying errors.
 - Each phidget that uses me should implement #textChanged

Instance Variables
	running:		Dictionary (containing Booleans)
	scrollPosition:		Dictionary (containing Integers)
	seperator:		String
	text:		Dictionary (containing Strings)
	waitTime:		Integer

running
	- This is a Dictionary of the form {row -> Boolean} where row is the number of a row. The Boolean indicates wether for that row scolling is enabled or not.

scrollPosition
	- This is a Dictionary of the form {row -> position} where row is the number of a row. The position is used if scrolling is enabled for a row. It indicates the character of the text that has to be displayed in the first column.
	
seperator
	- The seperator is a String seperating the end and the beginning of a row if scrolling is enabled.
	  If you make the string 'I love ice cream' a scrolling text on the display. It will be displayed as 'I love ice cream ** I love ice cream ** I love ice cream ** I love[...]' if the seperator is ' ** '.

text
	- This is a Dictionary of the form {row -> String} where row is the number of a row. The String is the cached text I try to display. If the text is too long I display it truncated (but chache the original value here).

waitTime
	-This Integer indicates the number of milliseconds to wait between a scroll step and another.
