visualization
drawOn: aCanvas

	super drawOn: aCanvas.
	aCanvas
		drawString: self defaultInstructionMessage 
		at: self defaultInstructionMessagePosition 
		font: Preferences standardDefaultTextFont
		color: Color white.