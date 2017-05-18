as yet unclassified
testOpenDashboardOnKeystroke
	
	|observer eventSucess eventFail morph|
	
	observer := WAKeyStrokeHandler new.
	eventSucess := WATestKeyStrokeEventDashBoard new.
	eventFail := WATestFailingKeyStrokeEvent new.
	
	morph := observer keyStroke: eventSucess.
	
	self assert: (morph isKindOf: WADashboard) description: 'Keystroke didnt open correct morph.'.
	self should: [observer keyStroke: eventFail] raise: Error description: 'Error didnt appear.'.
	
	morph delete.