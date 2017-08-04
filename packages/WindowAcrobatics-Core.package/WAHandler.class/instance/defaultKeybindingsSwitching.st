defaults
defaultKeybindingsSwitching

	^ Dictionary new 
			add: '<Cmd-t>'->#lastWindow;
			add: '<Cmd-e>'->#spaceRight;
			add: '<Cmd-q>'->#spaceLeft;
			add: '<Cmd-U>'->#cycle;
			yourself