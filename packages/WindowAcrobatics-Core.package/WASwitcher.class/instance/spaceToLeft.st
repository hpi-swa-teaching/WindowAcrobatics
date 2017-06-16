spaces
spaceToLeft

	| windows |
	WASwitcher spaceNumber = 1 ifFalse: [ 
	windows := ActiveWorld submorphs select: [:w | w isSystemWindow].
	windows do: [:w | self moveWindowRight: w.].
	WASwitcher spaceNumber: WASwitcher spaceNumber -1.
	]