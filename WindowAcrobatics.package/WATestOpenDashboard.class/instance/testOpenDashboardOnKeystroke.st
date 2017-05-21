as yet unclassified
testOpenDashboardOnKeystroke
	
	|observer eventSucess eventFail|
	
	observer := WAKeyStrokeHandler new.
	eventSucess := WATestKeyStrokeEventDashBoard new.
	eventFail := WATestFailingKeyStrokeEvent new.
	
	self assert: ((observer keyStroke: eventSucess) isKindOf: WADashboard) description: 'Keystroke didnt open correct morph.'.
	self should: [observer keyStroke: eventFail] raise: Error description: 'Error didnt appear.'.