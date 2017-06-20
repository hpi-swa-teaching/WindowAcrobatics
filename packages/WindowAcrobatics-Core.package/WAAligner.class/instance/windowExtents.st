accessing
windowExtents

		^ Dictionary new
		add: #full ->[(World extent x) @ (World extent y - self dockingBarYExtent)] value;
		add: #verticalHalf -> [(World extent x) @ ((World extent y - self dockingBarYExtent)  / 2) asInteger] value;
		add: #horizontalHalf -> [(World extent x / 2) asInteger @ (World extent y - self dockingBarYExtent)] value;
		add: #quarter -> [(World extent x / 2) asInteger @ ((World extent y - self dockingBarYExtent) / 2) asInteger] value;
		add: #sixth -> [(World extent x / 2) asInteger @ ((World extent y - self dockingBarYExtent) / 3) asInteger] value;
		yourself