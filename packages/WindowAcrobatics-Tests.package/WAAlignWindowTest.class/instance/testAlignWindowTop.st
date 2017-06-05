as yet unclassified
testAlignWindowTop
	
	|event window|
	
	window := SystemWindow new openInWorld.
	event := KeyboardEvent new
			setType: #keyStroke
			buttons: 64
			position: 0@0
			keyValue: 1
			hand: nil
			stamp: nil.
	WAHandler handleEvent: event.
	self assert: (window position = (0@18)) description: 'Window didnt align correctly (left).'.
	window delete.