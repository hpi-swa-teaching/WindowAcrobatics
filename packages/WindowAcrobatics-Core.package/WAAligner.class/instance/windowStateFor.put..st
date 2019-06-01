handling
windowStateFor: aWindow put: aState

	lastBounds at: aWindow put: aWindow bounds.
	^ windowStates at: aWindow put: aState