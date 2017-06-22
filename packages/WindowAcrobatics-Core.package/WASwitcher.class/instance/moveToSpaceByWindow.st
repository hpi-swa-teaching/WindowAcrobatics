as yet unclassified
moveToSpaceByWindow

	| windows | 

	windows := ActiveHand submorphs select: [ :w | w isSystemWindow ].
	windows ifEmpty: [^false] .
	ActiveHand position x + 3 >= ActiveWorld extent x ifTrue: [ self spaceToRight ].
	ActiveHand position x - 3  <= 0 ifTrue: [ self spaceToLeft ].