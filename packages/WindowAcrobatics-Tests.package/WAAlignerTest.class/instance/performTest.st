running
performTest

	^ Preferences
		setFlag: #fullScreenLeavesDeskMargins
		toValue: false
		during: [super performTest]