as yet unclassified
windowPositions

	^ Dictionary new
		add: #leftTop -> [0 @ self dockingBarYExtent] value;
		add: #leftCenter -> [0 @ ((World extent y / 2) + (self dockingBarYExtent / 2)) asInteger] value;
		add: #centerTop -> [(World extent x / 2) asInteger @ self dockingBarYExtent] value;
		add: #centerCenter -> [(World extent x / 2) asInteger @ ((World extent y / 2) + (self dockingBarYExtent / 2)) asInteger] value;
		yourself 