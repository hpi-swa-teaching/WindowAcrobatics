as yet unclassified
initializeUpButton
	
	arrowUp :=  (('<font color="#FFFFFF"><b>UP</b></font>' asHtmlText asMorph margins: 10@3; imageForm) asMorph
			setToAdhereToEdge: #topRight;
			disableTableLayout: true;
			yourself).
			
	arrowUp on: #click
		send: #previousPage
		to: self.
	
			
	self addMorphFront: arrowUp.