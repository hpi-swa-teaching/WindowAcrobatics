handling
handleEvent: aKeyboardEvent

	|alignNotHandled dashboardNotHandled switchingNotHandled|
	
	alignNotHandled := true.
	dashboardNotHandled := true.
	switchingNotHandled := true.
	
	self alignmentActive ifTrue: [
		(self descriptionToActionBindings at: (self keyToDescriptionBindingsAlignment at: aKeyboardEvent keyString ifAbsent: [alignNotHandled := false]) ifAbsent: []) value.
		].
	
	self dashboardActive ifTrue: [
		(self descriptionToActionBindings at: (self keyToDescriptionBindingsDashboard at: aKeyboardEvent keyString ifAbsent: [dashboardNotHandled := false.]) ifAbsent: []) value.
		].
	
	self switchingActive ifTrue: [
		(self descriptionToActionBindings at: (self keyToDescriptionBindingsSwitching at: aKeyboardEvent keyString ifAbsent: [switchingNotHandled := false.]) ifAbsent: []) value.
		].
	
	^ (alignNotHandled or: dashboardNotHandled or: switchingNotHandled) and: (self alignmentActive and: self dashboardActive and: self switchingActive)