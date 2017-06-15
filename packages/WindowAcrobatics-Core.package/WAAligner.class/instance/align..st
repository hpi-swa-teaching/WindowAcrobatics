as yet unclassified
align: aSymbol

	|values corner stretch| 
	
	values := self defaultValues.
	
	aSymbol = 'bottom' ifTrue: [
		corner := 'leftMiddleCorner'.
		stretch := 'halfHorizontalScreen'.
		].
	
	aSymbol = 'full' ifTrue: [
		corner := 'leftUpperCorner'.
		stretch := 'fullExtent'.
		].
	
	aSymbol = 'left' ifTrue: [
		corner := 'leftUpperCorner'.
		stretch := 'halfVerticleScreen'.
		].
	
	aSymbol = 'right' ifTrue: [
		corner := 'upperMiddle'.
		stretch := 'halfVerticleScreen'.
		].
	
	aSymbol = 'top' ifTrue: [
		corner := 'leftUpperCorner'.
		stretch := 'halfHorizontalScreen'.
		].

	^ [ :windows :newPosition :newExtent | windows ifNotEmpty: [ (windows at: 1)  position: ((values at: newPosition) value); extent: ((values at: newExtent) value) ]] 
		value: (ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]])
		value: corner
		value: stretch