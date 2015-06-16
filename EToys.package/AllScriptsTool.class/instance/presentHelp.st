initialization
presentHelp
	"Sent when a Help button is hit; provide the user with some form of help for the tool at hand"

	| aString |
	aString := 
'This tool allows you to see all the scripts for all the objects in this project.

Sometimes you are only interested in those scripts that are ticking, or that are *ready* to tick when you hit the GO button (which are said to be "paused.")

Check "tickers only" if you only want to see such scripts -- i.e., scripts that are either paused or ticking.

If "tickers only" is *not* checked, then all scripts will be shown, whatever their status.

The other checkbox, labeled "all instances", only comes into play if you have created "multiple sibling instances" (good grief) of the same object, which share the same scripts; if you have such things, it is often convenient to see the scripts of just *one* such sibling, because it will take up less space and require less mindshare -- and note that you can control a script for an object *and* all its siblings from the menu of that one that you see, via menu items such as "propagate status to siblings".

If "all instances" is checked, scripts for all sibling instances will be shown, whereas if "all instances" is *not* checked, only one of each group of siblings will be selected to have its scripts shown.

But how do you get "multiple sibling instances" of the same object?  There are several ways:

(1)  Use the "make a sibling instance" or the "make multiple siblings..." menu item in the halo menu of a scripted object

(2)  Use the "copy" tile in a script.

(3)  Request "give me a copy now" from the menu associated with the "copy" item in a Viewer

If you have on your screen multiple sibling instances of the same object, then you may or may want to see them all in the All Scripts tool, and that is what the "all instances" checkbox governs.

Set "all instances" if you want a separate entry for each instance, as
opposed to a single representative of that kind of object.

Note that if you obtain a copy of an object by using the green halo handle, it will *not* be a sibling instance of the original.  It will in many ways seem to be, because it will start out its life having the same scripts as the original.  But it will then lead an independent life, so that changes to scripts of the original will not be reflected in it, and vice-versa.

This is an important distinction, and an unavoidable one because people sometimes want the deep sharing of sibling instances and sometimes they clearly do not.  But the truly understandable description of these concepts and distinctions certainly lies *ahead* of us!'.

	(StringHolder new contents: aString translated)
		openLabel: 'About the All Scripts tool' translated