as yet unclassified
initializeSelectionRectangle
	
	selectionRectangle := Morph new
		addMorphBack: (('<font color="#FFFFFF"><b>x</b></font>' asHtmlText asMorph margins: 10@3; imageForm) asMorph
			setToAdhereToEdge: #topLeft;
			yourself);
		borderWidth: 2;
		borderColor: Color white;
		disableTableLayout: true;
		color: Color transparent;
		yourself.
	
	selectionRectangle submorphs first
		on: #click
		send: #closeWindow
		to: self.
	
	self addMorphFront: selectionRectangle.