spaces
spaceToRight

	| windows |
	WASwitcher spaceNumber = 3 ifFalse: [
	windows := ActiveWorld submorphs select: [:w | w isSystemWindow].
	windows do: [:w|self moveWindowLeft: w.].
	WASwitcher spaceNumber: WASwitcher spaceNumber + 1.
	]