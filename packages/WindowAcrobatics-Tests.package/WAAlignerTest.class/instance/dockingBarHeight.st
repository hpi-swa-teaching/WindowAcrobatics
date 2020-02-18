accessing
dockingBarHeight

	^ (DockingBarMorph allInstances detect: [:m | m world = World]) height