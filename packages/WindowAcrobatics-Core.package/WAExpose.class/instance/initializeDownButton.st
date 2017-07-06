as yet unclassified
initializeDownButton
	
	arrowDown :=  (('<font color="#FFFFFF"><b>DOWN</b></font>' asHtmlText asMorph margins: 10@3; imageForm) asMorph
			setToAdhereToEdge: #bottomRight;
			disableTableLayout: true;
			yourself).
			
	arrowDown on: #click
		send: #nextPage
		to: self.
	
			
	self addMorphFront: arrowDown.