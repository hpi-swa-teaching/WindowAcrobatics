as yet unclassified
cycleThroughTypes

	|windows|
	
	windows := self getAllWindowsOfCurrentType.
	windows ifNotEmpty: [windows size > 1 ifTrue: [windows first passivate; sendToBack. windows second beKeyWindow.]]
	