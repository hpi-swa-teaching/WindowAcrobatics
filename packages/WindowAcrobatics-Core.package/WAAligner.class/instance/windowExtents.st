accessing
windowExtents

	|dockingbar|
	
	dockingbar := self dockingBarYExtent.

	^ Dictionary new
		add: #full ->[(World extent x) @ (World extent y - dockingbar)] value;
		add: #verticalHalf -> [(World extent x) @ ((World extent y - dockingbar)  / 2) asInteger] value;
		add: #horizontalHalf -> [(World extent x / 2) asInteger @ (World extent y - dockingbar)] value;
		add: #quarter -> [(World extent x / 2) asInteger @ ((World extent y - dockingbar) / 2) asInteger] value;
		yourself