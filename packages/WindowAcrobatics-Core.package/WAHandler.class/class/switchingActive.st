accessing
switchingActive
	SwitchingActive ifNil:[SwitchingActive := false].
	^ SwitchingActive