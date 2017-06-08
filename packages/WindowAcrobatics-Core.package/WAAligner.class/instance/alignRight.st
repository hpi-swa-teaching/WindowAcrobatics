as yet unclassified
alignRight
	^ [ :windows | windows ifNotEmpty: [ (windows at: 1) position: (World extent x / 2) asInteger @18; extent: (World extent x/ 2) asInteger @(World extent y - 18)]] value: (ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]]).