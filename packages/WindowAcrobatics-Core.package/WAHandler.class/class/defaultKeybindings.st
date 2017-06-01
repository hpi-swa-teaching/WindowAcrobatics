initializing
defaultKeybindings

	^ Dictionary new 
			add: '<Cmd-j>'->'alignLeft'; 
			add: '<Cmd-l>'->'alignRight';
			add: '<Cmd-i>'->'alignTop';
			add: '<Cmd-k>'->'alignBottom';
			add: '<Cmd-w>'->'openDashboard';
			yourself