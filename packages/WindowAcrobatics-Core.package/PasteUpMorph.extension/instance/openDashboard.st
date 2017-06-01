*WindowAcrobatics-Core-Events
openDashboard 
	hasWADashboard ifFalse: [
			WADashboard open.
			hasWADashboard := true. 
			].