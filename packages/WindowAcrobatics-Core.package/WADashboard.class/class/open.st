as yet unclassified
open
	self hasDashboard ifFalse: [
			self hasDashboard: true.
			self new openInWorld.
		]			
	