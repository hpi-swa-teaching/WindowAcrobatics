accessing
windowPositions

	^ Dictionary new
		add: #leftTop -> [0 @ self dockingBarYExtent] value;
		add: #leftFirstThird -> [0 @ ((World extent y + self dockingBarYExtent) / 3) asInteger] value;
		add: #leftCenter -> [0 @ ((World extent y + self dockingBarYExtent) / 2) asInteger] value;
		add: #leftSecondThird -> [0 @ ((World extent y + self dockingBarYExtent) / 3) asInteger * 2] value;
		add: #centerTop -> [(World extent x / 2) asInteger @ self dockingBarYExtent] value;
		add: #centerFirstThird -> [(World extent x / 2) asInteger @ ((World extent y / 3) + (self dockingBarYExtent / 3)) asInteger] value;
		add: #centerCenter -> [(World extent x / 2) asInteger @ ((World extent y / 2) + (self dockingBarYExtent / 2)) asInteger] value;
		add: #centerSecondThird -> [(World extent x / 2) asInteger @ ((World extent y + self dockingBarYExtent) / 3) asInteger * 2] value;
		yourself 