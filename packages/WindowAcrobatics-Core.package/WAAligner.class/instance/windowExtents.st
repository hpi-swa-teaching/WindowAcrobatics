as yet unclassified
windowExtents

	|dockingbar|
	
	dockingbar := self dockingBarYExtent.

	^ Dictionary new
		add: #full ->[(World extent x) @ (World extent y - dockingbar)] value;
		add: #verticalhalf -> [(World extent x) @ ((World extent y - dockingbar)  / 2) asInteger] value;
		add: #horizonatlhalf -> [(World extent x / 2) asInteger @ (World extent y - dockingbar)] value;
		add: #quater -> [(World extent x / 2) asInteger @ ((World extent y - dockingbar) / 2) asInteger] value;
		yourself