as yet unclassified
testAlignWindowBottom
	
	|event window|
	
	window := SystemWindow new openInWorld.
	event := KeyboardEvent new
			setType: #keyStroke
			buttons: 64
			position: 0@0
			keyValue: 4
			hand: nil
			stamp: nil.
	WAHandler handleEvent: event.
	self assert: (window width = World width) description: 'Window didnt align correctly (left).'.
	window delete.