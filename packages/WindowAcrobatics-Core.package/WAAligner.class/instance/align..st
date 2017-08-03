handling
align: aSymbol

	aSymbol = #bottom ifTrue: [ self alignKeyWindowAt: (self windowPositions at: #leftCenter) with: (self windowExtents at: #verticalHalf) ].
	aSymbol = #full ifTrue: [ self alignKeyWindowAt: (self windowPositions at: #leftTop) with: (self windowExtents at: #full) ].
	aSymbol = #left ifTrue: [ self alignKeyWindowAt: (self windowPositions at: #leftTop) with: (self windowExtents at: #horizontalHalf) ].
	aSymbol = #right ifTrue: [ self alignKeyWindowAt: (self windowPositions at: #centerTop) with: (self windowExtents at: #horizontalHalf) ].
	aSymbol = #top ifTrue: [ self alignKeyWindowAt: (self windowPositions at: #leftTop) with: (self windowExtents at: #verticalHalf) ].