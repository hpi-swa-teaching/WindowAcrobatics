as yet unclassified
testExposeOpensOnMethodCall

	| dashboard |
	dashboard := WAExpose open.
	self assert: WAExpose hasDashboard description: 'Dashboard didn''t open on method call.'.
	dashboard delete.
	self deny: WAExpose hasDashboard description: 'Dashboard didn''t close on method call.'.