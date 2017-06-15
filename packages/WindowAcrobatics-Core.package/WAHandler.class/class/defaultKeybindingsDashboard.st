initializing
defaultKeybindingsDashboard

	^ Dictionary new 
			add: '<Cmd-w>'->'openDashboard';
			add: '<Cmd-t>'->'lastWindow';
			add: '<Cmd-e>'->'spaceRight';
			add: '<Cmd-q>'->'spaceLeft';
			yourself