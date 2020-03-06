initializing
reset

	KeyToDescriptionBindingsSwitching := nil.
	KeyToDescriptionBindingsDashboard := nil.
	KeyToDescriptionBindingsAlignment := nil.
	self instance ifNotNil: [:instance |
		self instance switcher delete.
		self instance switcher: nil].