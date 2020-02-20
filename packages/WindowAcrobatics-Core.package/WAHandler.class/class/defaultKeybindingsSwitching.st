defaults
defaultKeybindingsSwitching

	^ Dictionary new 
			add: $t -> #lastWindow;
			add: $e -> #spaceRight;
			add: $q -> #spaceLeft;
			add: $U -> #cycle;
			yourself