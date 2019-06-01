as yet unclassified
applyToWindow: aWindow for: anAligner

	(self state = #fullScreen) ifTrue: [^ aWindow expandToFullScreen].
	(self state = #collapsed) ifTrue: [^ aWindow collapse].
	anAligner alignRegular: aWindow.