accessing
windowPositions

	| area |
	area := RealEstateAgent maximumUsableArea.
	((area = lastWorldArea) and: windowPositions notNil)
		ifTrue: [^ windowPositions].
	
	area := self trimWorldArea: area.
	
	^ windowPositions := Dictionary new
		add: #leftTop -> area topLeft;
		add: #leftFirstThird -> ((area topLeft * 2) + (area bottomLeft) // 3);
		add: #leftCenter -> area leftCenter;
		add: #leftSecondThird -> ((area topLeft) + (area bottomLeft * 2) // 3);
		add: #centerTop -> area topCenter;
		add: #centerFirstThird -> ((area topCenter * 2) + (area bottomCenter) // 3);
		add: #centerCenter -> area center;
		add: #centerSecondThird -> ((area topCenter) + (area bottomCenter * 2) // 3);
		yourself 