as yet unclassified
nextStateFor: aSymbol

	(aSymbol = self horizontalPosition)
		ifTrue: [^ WASideAlignment side: aSymbol].
	((self horizontalPosition = #left) and: [aSymbol = #right])
		ifTrue: [^ self moveRight].
	((self horizontalPosition = #right) and: [aSymbol = #left])
		ifTrue: [^ self moveLeft].
	(aSymbol = self verticalPosition)
		ifTrue: [^ WASideAlignment side: aSymbol].
	((self verticalPosition = #top) and: [aSymbol = #bottom])
		ifTrue: [^ self moveDown].
	((self verticalPosition = #bottom) and: [aSymbol = #top])
		ifTrue: [^ self moveUp].