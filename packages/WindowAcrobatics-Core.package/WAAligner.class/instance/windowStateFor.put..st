handling
windowStateFor: aWindow put: aState

	^ self windowStates
		at: aWindow
		put: aState