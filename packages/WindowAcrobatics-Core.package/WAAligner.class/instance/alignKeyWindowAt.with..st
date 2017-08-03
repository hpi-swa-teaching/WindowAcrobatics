handling
alignKeyWindowAt: aPosition with: anExtent
	
	self windowsInCurrentSpace 
		ifNotEmpty: [ (self windowsInCurrentSpace at: 1) position: aPosition; extent: anExtent].