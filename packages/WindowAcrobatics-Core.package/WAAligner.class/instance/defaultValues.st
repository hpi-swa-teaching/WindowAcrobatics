as yet unclassified
defaultValues
	
	|dockingbar|
	
	dockingbar := self dockingBarYExtent. 
	
	^ Dictionary new 
			add: 'leftUpperCorner'->[0@dockingbar]; 
			add: 'leftMiddleCorner'->[0@((World extent y / 2) + (dockingbar / 2)) asInteger];
			add: 'fullExtent'->[(World extent x )@ (World extent y - dockingbar)];
			add: 'halfVerticleScreen' -> [(World extent x / 2) asInteger @ (World extent y - dockingbar)];
			add: 'upperMiddle' -> [(World extent x / 2) asInteger @dockingbar];
			add: 'halfHorizontalScreen' -> [(World extent x)@((World extent y - dockingbar) / 2) asInteger];
			yourself