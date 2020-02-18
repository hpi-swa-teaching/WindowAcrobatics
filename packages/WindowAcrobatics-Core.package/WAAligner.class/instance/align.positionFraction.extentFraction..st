handling
align: aWindow positionFraction: aPosition extentFraction: anExtent
	
	| area |
	area := self trimWorldArea: RealEstateAgent maximumUsableArea.
	aWindow
		position: (area topLeft + (area extent * aPosition)) floor;
		extent: (area extent * anExtent) floor