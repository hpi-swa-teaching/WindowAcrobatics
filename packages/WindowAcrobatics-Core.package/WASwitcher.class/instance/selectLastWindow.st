as yet unclassified
selectLastWindow
	
	| systemWindows | 
	
	systemWindows := ActiveWorld submorphs select: [:m | m isSystemWindow]. 
	systemWindows ifNotEmpty: [systemWindows size > 1 ifTrue: [
			systemWindows first passivate.
			systemWindows second activate; comeToFront.]].
