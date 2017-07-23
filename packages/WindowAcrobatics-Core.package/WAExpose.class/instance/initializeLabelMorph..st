initialization
initializeLabelMorph: aMorph

	aMorph addMorph: (TextMorph new color: Color white;
			position: aMorph position x@aMorph position y - 25;
			contents: (aMorph valueOfProperty: #window) label;
			margins: 30@5;
			lock;
			yourself).