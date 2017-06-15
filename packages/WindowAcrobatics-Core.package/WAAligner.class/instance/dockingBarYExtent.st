accessing
dockingBarYExtent

	|dockingbars|

	dockingbars := ActiveWorld submorphs select: [:window| window isDockingBar ].

	dockingbars isEmpty ifFalse: [
		^  (dockingbars at: 1) extent y. 
		] 
	ifTrue: [^ 0]. 
	
	
