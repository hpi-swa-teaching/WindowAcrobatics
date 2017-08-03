switching
cycleThroughTypes

	|windows|
	
	windows := self allWindowsOfCurrentType.
	windows ifNotEmpty: [windows size > 1 ifTrue: [windows first passivate; sendToBack. windows second beKeyWindow.]]
	