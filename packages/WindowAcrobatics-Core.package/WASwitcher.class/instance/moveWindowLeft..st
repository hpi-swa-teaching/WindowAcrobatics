spaces
moveWindowLeft: aWindow

	| endPoint | 
	
	endPoint := (aWindow position x - ActiveWorld extent x)@aWindow position y.
	
	aWindow position: endPoint.