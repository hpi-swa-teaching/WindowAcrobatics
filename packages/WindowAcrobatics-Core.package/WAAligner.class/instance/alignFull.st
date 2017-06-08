as yet unclassified
alignFull
	^ [ :windows | windows ifNotEmpty: [ (windows at: 1)  position: 0@(0 + 18); extent: (World extent x)@(World extent y - 18)]] value: (ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]]).