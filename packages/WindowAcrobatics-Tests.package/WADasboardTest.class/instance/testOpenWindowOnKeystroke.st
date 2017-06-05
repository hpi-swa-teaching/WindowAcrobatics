as yet unclassified
testOpenWindowOnKeystroke
	
	|eventSucess eventFail|
	
	eventSucess := KeyboardEvent new
			setType: #keyStroke
			buttons: 64
			position: 0@0
			keyValue: 119
			hand: nil
			stamp: nil.
	WAHandler handleEvent: eventSucess.
	self assert: (WADashboard hasDashboard) description: 'Dashboard didnt open correctly.'.
	
	eventFail := KeyboardEvent new
			setType: #keyUp
			buttons: 64
			position: 0@0
			keyValue: 55
			hand: nil
			stamp: nil.
	WADashboard allInstancesDo: #activateWindowAndClose.
	self assert: (WADashboard hasDashboard not) description: 'Dashboard opened on wrong keyStroke.'