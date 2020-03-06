preferences - alignment
alignFocusedWindow
	<preference: 'Align focused window'
		category: #WindowAcrobatics
		description: 'If activated, alignments will be applied to the currently focused window (see mouseOverForKeyboardFocus). Otherwise, always the last clicked window will be aligned.'
		type: #Boolean>
		
	^ AlignFocusedWindow ifNil: [true]