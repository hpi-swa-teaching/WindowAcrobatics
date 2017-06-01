as yet unclassified
drawOn: aCanvas

	super drawOn: aCanvas.
	aCanvas
		drawString: 'Release [Cmd] to close. Hit your designated key again to scroll forward, your designated key and [shift] to scroll backward.'
		at: 10@10
		font: Preferences standardDefaultTextFont
		color: Color white.