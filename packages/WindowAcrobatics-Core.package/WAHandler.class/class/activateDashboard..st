preferences
activateDashboard: aBool
	
	self dashboardActive:  (self dashboardActive not).
	self dashboardActive ifTrue: [self keyToDescriptionBindingsDashboard: nil]. 