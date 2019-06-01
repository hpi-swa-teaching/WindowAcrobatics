handling
windowStateFor: aWindow ifAbsent: aBlock

	^ self windowStates
		at: aWindow
		ifAbsent: aBlock