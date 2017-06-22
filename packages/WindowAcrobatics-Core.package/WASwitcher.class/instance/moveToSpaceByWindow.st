as yet unclassified
moveToSpaceByWindow

	| windows | 

	windows := ActiveHand submorphs select: [ :w | w isSystemWindow ].
	windows ifEmpty: [^false] .
	ActiveHand position x + 1 = ActiveWorld extent x ifTrue: [ self spaceToRight ].
	ActiveHand position x  = 0 ifTrue: [ self spaceToLeft ].