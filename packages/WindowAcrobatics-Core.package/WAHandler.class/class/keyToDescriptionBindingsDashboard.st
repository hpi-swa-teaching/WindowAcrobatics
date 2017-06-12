accessing
keyToDescriptionBindingsDashboard
	
	KeyToDescriptionBindingsDashboard ifNil: [KeyToDescriptionBindingsDashboard := WAHandler defaultKeybindingsDashboard].
	
	^ KeyToDescriptionBindingsDashboard