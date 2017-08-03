util
heightOfDockingBar

	(ActiveWorld submorphs select: [ :window | window isDockingBar ])
		ifNotEmpty: [ ^ ((ActiveWorld submorphs select: [ :window | window isDockingBar ]) at: 1) height ]
		ifEmpty: [ ^ 0 ].
	
	
