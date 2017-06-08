initializing
defaultKeybindings

	^ Dictionary new 
			add: '<Cmd-left>'->'alignLeft'; 
			add: '<Cmd-right>'->'alignRight';
			add: '<Cmd-home>'->'alignTop';
			add: '<Cmd-end>'->'alignBottom';
			add: '<Cmd-w>'->'openDashboard';
			add: '<Cmd-l>'->'alignFull';
			add: '<Cmd-z>'->'lastWindow';
			yourself