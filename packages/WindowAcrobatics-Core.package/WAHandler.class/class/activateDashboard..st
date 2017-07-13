preferences
activateDashboard: aBool
	
	self dashboardActive:  (self dashboardActive not).
	"reset bindings 
	self dashboardActive ifTrue: [self keyToDescriptionBindingsDashboard: nil]. "