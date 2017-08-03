defaults
windowExtents

	^ Dictionary new
		add: #full -> ((World extent x) @ (World extent y - self heightOfDockingBar));
		add: #verticalHalf -> ((World extent x) @ ((World extent y - self heightOfDockingBar)  / 2) asInteger);
		add: #horizontalHalf -> ((World extent x / 2) asInteger @ (World extent y - self heightOfDockingBar));
		add: #quarter -> ((World extent x / 2) asInteger @ ((World extent y - self heightOfDockingBar) / 2) asInteger);
		add: #sixth -> ((World extent x / 2) asInteger @ ((World extent y - self heightOfDockingBar) / 3) asInteger);
		yourself