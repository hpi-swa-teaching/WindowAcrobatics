testing
testSpacesAreKeptOnFullRepaint
	"Regression test for #69"

	| window |
	window := windowTest openNewWindow.
	WASwitcher new spaceToRight.
	ActiveWorld fullRepaintNeeded.
	self deny: (WAAligner new windowsInCurrentSpace includes: window).