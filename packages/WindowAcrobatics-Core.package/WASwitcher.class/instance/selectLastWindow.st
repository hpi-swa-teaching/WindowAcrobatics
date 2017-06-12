as yet unclassified
selectLastWindow
	
	| systemWindows | 
	
	systemWindows := ActiveWorld submorphs select: [:window | window isSystemWindow]. 
	(systemWindows isEmpty or: (systemWindows size = 1)) ifFalse: [
			systemWindows first passivate.
			systemWindows second activate; comeToFront.].
