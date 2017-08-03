initializing
open
	self hasDashboard ifFalse: [
			self hasDashboard: true.
			^ self new openInWorld ]			
	