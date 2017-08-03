handling
alignKeyWindowAt: aPosition with: anExtent
	
	self windowsInCurrentSpace 
		ifNotEmpty: [ (self windowsInCurrentSpace first) position: aPosition; extent: anExtent].