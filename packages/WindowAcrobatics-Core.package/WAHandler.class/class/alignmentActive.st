accessing
alignmentActive

	AlignmentActive ifNil: [AlignmentActive := false].
	
	^ AlignmentActive