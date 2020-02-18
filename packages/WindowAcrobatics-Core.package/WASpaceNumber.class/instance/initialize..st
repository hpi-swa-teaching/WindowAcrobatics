initialization
initialize: aNumber

	super initialize.
	self seconds: self startSeconds;
		extent: self defaultExtent;
		color: self defaultColor;
		setLayout.
	
	1 to: (WASwitcher numberOfSpaces) do: [:n | n = aNumber ifTrue: [self addNumberToSign: n colored: Color white] ifFalse: [self addNumberToSign: n colored: Color gray]].
	
	self openInWorld.