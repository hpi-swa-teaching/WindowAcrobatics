as yet unclassified
initializeGlobalKeyBindings

	keyBindings := Dictionary newFrom: 
		{
			'<down>' -> [:anEvent :aMorph | aMorph position: self position + (0@10)].
			'<left>' -> [:anEvent :aMorph | aMorph position: self position + (-10@0)].
			'<right>' -> [:anEvent :aMorph | aMorph position: self position + (10@0)].
			'<up>' -> [:anEvent :aMorph | aMorph position: self position + (0@ -10)].
			'<Cmd-q>' -> [:anEvent :aMorph | RectangleMorph new openInWorld].
			'<Cmd-w>' -> [:anEvent :aMorph | WADashboard new openInWorld].
		}


	"KeyBindings := Dictionary newFrom:
		{ '<down>' -> [:anEvent :morph | morph selectNext]. 
		'<up>' -> [:anEvent :morph | morph selectPrevious]. 
		'<right>' -> [:anEvent :morph |  morph showChildList]. 
		'<left>' -> [:anEvent :morph | morph showParentList]. 
		'<escape>' -> [:anEvent :morph | morph deactivate: anEvent hand]. 
		'<cr>' -> [:anEvent :morph | morph doActionOnSelectedEvent:anEvent] }"