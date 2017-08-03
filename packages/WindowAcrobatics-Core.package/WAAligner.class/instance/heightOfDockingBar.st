util
heightOfDockingBar

	(ActiveWorld submorphs select: [ :window | window isDockingBar ])
		ifNotEmpty: [ ^ ((ActiveWorld submorphs select: [ :window | window isDockingBar ]) first) height ]
		ifEmpty: [ ^ 0 ].
	
	
