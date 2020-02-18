preferences
activateAlignFocusedWindow
	<preference: 'Align focused window'
		category: #WindowAcrobatics
		description: 'If activated, alignments will be applied to the currently focused window (see mouseOverForKeyboardFocus). Otherwise, always the last clicked window will be aligned.'
		type: #Boolean>
		
	^ self alignFocusedWindow