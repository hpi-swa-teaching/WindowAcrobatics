as yet unclassified
testExposeOpensOnMethodCall

	|dashboard|
	
	dashboard := WAExpose open.
	self assert: (WAExpose hasDashboard) description: 'Dasboard didnt open on method call.'.
	dashboard delete.
	self assert: (WAExpose hasDashboard not) description: 'Dasboard didnt close on method call.'.