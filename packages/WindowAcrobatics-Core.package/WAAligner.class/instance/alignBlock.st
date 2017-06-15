accessing
alignBlock

	^ [ :windows :newPosition :newExtent | windows ifNotEmpty: [ (windows at: 1)  position: ( self windowPositions at: newPosition); extent: (self windowExtents at: newExtent value) ]] 