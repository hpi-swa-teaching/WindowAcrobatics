as yet unclassified
cycleThroughTypes

	|windows|
	
	windows := self getAllWindowsOfCurrentType.
	(windows first) sendToBack.
	windows second activate; comeToFront.