handling
handle: aKeyboardEvent

	|alignHandled dashboardHandled switchingHandled|
	
	alignHandled := true.
	dashboardHandled := true.
	switchingHandled := true.

	WAHandler alignmentActive ifTrue: [
		(WAHandler descriptionToActionBindings at: (WAHandler keyToDescriptionBindingsAlignment at: aKeyboardEvent keyString ifAbsent: [alignHandled := false]) ifAbsent: []) value.
		].
	
	WAHandler dashboardActive ifTrue: [
		(WAHandler descriptionToActionBindings at: (WAHandler keyToDescriptionBindingsDashboard at: aKeyboardEvent keyString ifAbsent: [dashboardHandled := false.]) ifAbsent: []) value.
		].

	WAHandler switchingActive ifTrue: [
		(WAHandler descriptionToActionBindings at: (WAHandler keyToDescriptionBindingsSwitching at: aKeyboardEvent keyString ifAbsent: [switchingHandled := false.]) ifAbsent: []) value.
		].
	
	^ (alignHandled and: WAHandler alignmentActive) or: (dashboardHandled and: WAHandler dashboardActive) or: (switchingHandled and: WAHandler switchingActive)