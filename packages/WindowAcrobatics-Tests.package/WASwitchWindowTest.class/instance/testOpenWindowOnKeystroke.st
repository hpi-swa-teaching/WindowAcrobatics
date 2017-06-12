as yet unclassified
testOpenWindowOnKeystroke
	
	|observer eventSucess eventFail morph|
	
	observer := WAKeyStrokeHandler new.
	eventSucess := WATestKeyStrokeEvent new.
	eventFail := WATestFailingKeyStrokeEvent new.
	
	morph := observer keyStroke: eventSucess.
	
	self assert: (morph isKindOf: RectangleMorph) description: 'Keystroke didnt open correct morph.'.
	self should: [observer keyStroke: eventFail] raise: Error description: 'Error didnt appear.'.
	
	morph delete.