as yet unclassified
testDashboardOpensOnMethodCall

	"|dashboard|
	
	dashboard := WADashboard open.
	self assert: (WADashboard hasDashboard) description: 'Dasboard didnt open on method call.'.
	dashboard delete.
	self assert: (WADashboard hasDashboard not) description: 'Dasboard didnt close on method call.'."
	
	self assert: true description: '...'.