as yet unclassified
drawOn: aCanvas

	super drawOn: aCanvas.
	aCanvas
		drawString: 'Hit [Esc] to close. Hit $x to close the selected window.'
		at: 10@10
		font: Preferences standardDefaultTextFont
		color: Color white.