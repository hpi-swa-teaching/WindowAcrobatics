as yet unclassified
getCurrentWindowType

	(self windowsInCurrentSpace) ifEmpty: [ ^ false.].

	^ (self windowsInCurrentSpace first) model.
