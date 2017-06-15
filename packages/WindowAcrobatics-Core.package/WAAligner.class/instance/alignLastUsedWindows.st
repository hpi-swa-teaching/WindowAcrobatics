handling
alignLastUsedWindows

	|windows|

	windows := self openWindows.
	
	windows size > 0 ifTrue: [(windows at: 1) position: (self windowPositions at: #leftTop); extent: (self windowExtents at: #quarter)].
	windows size > 1 ifTrue: [(windows at: 2) position: (self windowPositions at: #centerTop); extent: (self windowExtents at: #quarter)].
	windows size > 2 ifTrue: [(windows at: 3) position: (self windowPositions at: #leftCenter); extent: (self windowExtents at: #quarter)].
	windows size > 3 ifTrue: [(windows at: 4) position: (self windowPositions at: #centerCenter); extent: (self windowExtents at: #quarter)].