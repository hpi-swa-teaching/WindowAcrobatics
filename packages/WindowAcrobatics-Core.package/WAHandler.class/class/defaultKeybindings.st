defaults
defaultKeybindings

	^ Dictionary new
			addAll: self defaultKeybindingsAlignment;
			addAll: self defaultKeybindingsDashboard;
			addAll: self defaultKeybindingsSwitching;
			yourself