as yet unclassified
getCurrentWindowType

	(self getWindowsInCurrentSpace) ifEmpty: [ ^ false.].

	^ (self getWindowsInCurrentSpace first) model.
