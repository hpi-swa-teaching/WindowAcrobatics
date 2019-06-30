tools
openNewWindow

	^ (windowHeap add: SystemWindow new)
		"visible: false;"
		openInWorld;
		yourself