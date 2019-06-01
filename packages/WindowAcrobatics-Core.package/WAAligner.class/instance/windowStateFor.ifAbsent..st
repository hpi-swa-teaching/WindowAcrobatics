handling
windowStateFor: aWindow ifAbsent: aBlock

	lastBounds at: aWindow ifPresent: [:bounds |
		aWindow bounds ~= bounds
			ifTrue: [windowStates removeKey: aWindow]].
	^ windowStates at: aWindow ifAbsent: aBlock