spaces
moveWindowRight: aWindow

	| endPoint | 
	
	
	endPoint := (aWindow position x + ActiveWorld extent x)@aWindow position y.
	
	(AnimPropertyAnimation
		on: aWindow 
		property: #position
		start: aWindow position 
		end: endPoint
		duration: 100)
		register;
		start: #deleteWhenFinished.
		