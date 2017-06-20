accessing
numberOfLastWindows

	NumberOfLastWindows ifNil: [NumberOfLastWindows := 4].
	^ NumberOfLastWindows