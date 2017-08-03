handling
alignLastSixWindows

	|windows|

	windows := self windowsInCurrentSpace.
	
	windows size > 0 ifTrue: [(windows at: 1) position: (self windowPositions at: #leftTop); extent: (self windowExtents at: #sixth)].
	windows size > 1 ifTrue: [(windows at: 2) position: (self windowPositions at: #centerTop); extent: (self windowExtents at: #sixth)].
	windows size > 2 ifTrue: [(windows at: 3) position: (self windowPositions at: #leftFirstThird); extent: (self windowExtents at: #sixth)].
	windows size > 3 ifTrue: [(windows at: 4) position: (self windowPositions at: #centerFirstThird); extent: (self windowExtents at: #sixth)].
	windows size > 4 ifTrue: [(windows at: 5) position: (self windowPositions at: #leftSecondThird); extent: (self windowExtents at: #sixth)].
	windows size > 5 ifTrue: [(windows at: 6) position: (self windowPositions at: #centerSecondThird); extent: (self windowExtents at: #sixth)].