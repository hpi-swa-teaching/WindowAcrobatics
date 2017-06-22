accessing
windowPositions

	^ Dictionary new
		add: #leftTop -> [0 @ self dockingBarYExtent] value;
		add: #leftFirstThird -> [0 @ ((World extent y - self dockingBarYExtent) // 3 + self dockingBarYExtent)] value;
		add: #leftCenter -> [0 @ ((World extent y + self dockingBarYExtent) // 2)] value;
		add: #leftSecondThird -> [0 @ ((World extent y - self dockingBarYExtent) * 2 // 3 + self dockingBarYExtent)] value;
		add: #centerTop -> [(World extent x // 2) @ self dockingBarYExtent] value;
		add: #centerFirstThird -> [(World extent x // 2) @ ((World extent y - self dockingBarYExtent) // 3 + self dockingBarYExtent)] value;
		add: #centerCenter -> [(World extent x // 2) @ ((World extent y / 2) + (self dockingBarYExtent // 2))] value;
		add: #centerSecondThird -> [(World extent x // 2) @ ((World extent y - self dockingBarYExtent) * 2 // 3 + self dockingBarYExtent)] value;
		yourself 