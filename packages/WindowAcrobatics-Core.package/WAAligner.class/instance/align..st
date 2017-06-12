as yet unclassified
align: aString

	|values corner stretch| 
	
	values := self defaultValues.
	
	aString = 'bottom' ifTrue: [
		corner := 'leftMiddleCorner'.
		stretch := 'halfHorizontalScreen'.
		].
	
	aString = 'full' ifTrue: [
		corner := 'leftUpperCorner'.
		stretch := 'fullExtent'.
		].
	
	aString = 'left' ifTrue: [
		corner := 'leftUpperCorner'.
		stretch := 'halfVerticleScreen'.
		].
	
	aString = 'right' ifTrue: [
		corner := 'upperMiddle'.
		stretch := 'halfVerticleScreen'.
		].
	
	aString = 'top' ifTrue: [
		corner := 'leftUpperCorner'.
		stretch := 'halfHorizontalScreen'.
		].

	^ [ :windows :newPosition :newExtent | windows ifNotEmpty: [ (windows at: 1)  position: ((values at: newPosition) value); extent: ((values at: newExtent) value) ]] 
		value: (ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]])
		value: corner
		value: stretch