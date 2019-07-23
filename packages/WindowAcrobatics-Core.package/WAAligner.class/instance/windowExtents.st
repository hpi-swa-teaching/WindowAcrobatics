accessing
windowExtents

	| area extent |
	area := RealEstateAgent maximumUsableArea.
	((area = lastWorldArea) and: windowExtents notNil)
		ifTrue: [^ windowExtents].
	
	area := self trimWorldArea: area.
	extent := area extent.
	
	^ lastWorldArea := Dictionary new
		add: #full -> extent;
		add: #verticalHalf -> (extent * (1 @ (1 / 2))) floor;
		add: #horizontalHalf -> (extent * ((1 / 2) @ 1)) floor;
		add: #quarter -> (extent // 2);
		add: #sixth -> (extent * (1 / (2 @ 3))) floor;
		yourself