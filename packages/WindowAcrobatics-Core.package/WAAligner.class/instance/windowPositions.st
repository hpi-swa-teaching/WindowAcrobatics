defaults
windowPositions

	^ Dictionary new
		add: #leftTop -> (0 @ self heightOfDockingBar);
		add: #leftFirstThird -> (0 @ ((World extent y - self heightOfDockingBar) // 3 + self heightOfDockingBar));
		add: #leftCenter -> (0 @ ((World extent y + self heightOfDockingBar) // 2));
		add: #leftSecondThird -> (0 @ ((World extent y - self heightOfDockingBar) * 2 // 3 + self heightOfDockingBar));
		add: #centerTop -> ((World extent x // 2) @ self heightOfDockingBar);
		add: #centerFirstThird -> ((World extent x // 2) @ ((World extent y - self heightOfDockingBar) // 3 + self heightOfDockingBar));
		add: #centerCenter -> ((World extent x // 2) @ ((World extent y / 2) + (self heightOfDockingBar // 2)));
		add: #centerSecondThird -> ((World extent x // 2) @ ((World extent y - self heightOfDockingBar) * 2 // 3 + self heightOfDockingBar));
		yourself 