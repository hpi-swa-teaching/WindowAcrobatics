as yet unclassified
alignBottom
	^ [ :windows | windows ifNotEmpty: [ (windows at: 1)  position: 0@(World extent y / 2) asInteger; extent: (World extent x)@(World extent y / 2) asInteger ]] value: (ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]]).