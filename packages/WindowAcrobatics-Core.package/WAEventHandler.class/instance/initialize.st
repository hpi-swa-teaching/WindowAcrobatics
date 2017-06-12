initialization
initialize

	super initialize.
	
	self
		mouseDownPriority: 0;  
		setProperty: #handlesKeyboard toValue: [true];
		setProperty: #handlesMouseDown toValue: [true];
		setProperty: #handlesMouseUp toValue: [true];
		setProperty: #handlesMouseOver toValue: [true];
		setProperty: #handlesMouseOverDragging toValue: [true];
		setProperty: #handlesMouseStillDown toValue: [false];
		setProperty: #handlesMouseWheel toValue: [false];
		setProperty: #doubleClickTimeout toValue: [20 "ms"];
		dragThreshold: UiPlatform current dragThreshold "pixel";
		grabKeyboardOnMouseEnter: [Preferences mouseOverForKeyboardFocus];
		releaseKeyboardOnMouseLeave: false;
		tabAmongFields: false. "not implemented yet"